using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentennialHub
{
    public class CourseTimes
    {
        string startTime;
        string endTime;
        string course;
        Days day;

        public string StartTime { set { startTime = value; } get { return startTime; } }
        public string EndTime { set { endTime = value; } get { return endTime; } }
        public string Course { set { course = value; } get { return course; } }
        public Days Day { set { day = value; } get { return day; } }

        public CourseTimes(string start, string end, string course, Days day)
        {
            this.startTime = start;
            this.endTime = end;
            this.course = course;
            this.day = day;
        }

        public override string ToString()
        {
            return string.Format("{0}:   {1}  {2}-{3}", day.ToString(), course, startTime, endTime);
        }
    }

    public enum Days { Monday, Tuesday, Wednesday, Thursday, Friday }
}