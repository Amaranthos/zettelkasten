#!/usr/local/bin/rdmd

import std;

string sysTimeToIsoDate(SysTime time)
{
	return format!"%d%02d%02d"(time.year, time.month, time.day);
}

void main()
{
	foreach (filename; dirEntries(".", "*.md", SpanMode.breadth))
	{
		File file = File(filename, "r+");
		auto line = file.readln;

		if (line != "---\n")
		{
			auto content = readText(filename);

			auto log = executeShell(
				"git log --diff-filter=A --follow --format=%aI -1 -- " ~ filename);

			string created = SysTime.fromISOExtString(log.output).sysTimeToIsoDate;

			file.rewind;

			file.writeln("---");
			file.writeln("created: ", created);
			file.writeln("updated: ", Clock.currTime.sysTimeToIsoDate);
			file.writeln("tags:");
			file.writeln("---");
			file.writeln;
			file.writeln(content);
		}
	}
}
