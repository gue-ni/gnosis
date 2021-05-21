import sys
import re


ips = set()

if (len(sys.argv) != 2):
    print(f"Usage: python {sys.argv[0]} access.log")
    quit()

file = open(sys.argv[1], 'r')
lines = file.readlines()
lineNum = 1

pattern = "(?P<ip>.*) (?P<remote_log_name>.*) (?P<userid>.*) \[(?P<date>.*)(?=)(?P<timezone>.*?)\]" \
          " \"(?P<request_method>.*) (?P<path>.*)(?P<request_version> HTTP/.*)\" (?P<status>.*)" \
          "(?P<length>.*) \"(?P<referrer>.*)\" \"(?P<user_agent>.*)\""

matcher = re.compile(pattern)

for line in lines:

    group = matcher.search(line)
    print(
        f"REQUEST {lineNum}")

    if group:
        ip = group.group(1)
        remote_log_name = group.group(2)
        userid = group.group(3)
        date = group.group(4)
        timezone = group.group(5)
        request_method = group.group(6)
        path = group.group(7)
        reqest_version = group.group(8)
        status = group.group(9)
        length = group.group(10)
        referrer = group.group(11)
        user_agent = group.group(12)

        print(f"ip={ip}")
        # print(f"userid={userid}")
        # print(f"date={date}")
        # print(f"timezone={timezone}")
        # print(f"request_method={request_method}")
        # print(f"path={path}")
        # print(f"status={status}")
        # print(f"length={length}")
        # print(f"referrer={referrer}")
        # print(f"user_agent={user_agent}")

        ips.add(ip)

    else:
        print(f"did not match anything on line {lineNum}")

    lineNum = lineNum + 1
    print("======================================================================================")

    # if (count == 3):
    #    break


print("Summary:")
print(f"{len(ips)} unique IP addresses")
