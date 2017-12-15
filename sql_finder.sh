GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[1;37m' # No Color
YELLOW='\033[0;33m'
python searcher.py
printf "${YELLOW}[+] Analyzing links${NC}\n"
while read name
do
link="$name"\'""
response=$(curl -s "$link")
if [[ $response =~ "SQL syntax" ]];
then
printf "${GREEN}[+] Host $link vulnerable${NC}\n"
echo $link >> vulnerable.txt
else
printf "${RED}[-] Host $link not vulnerable${NC}\n"
fi
done < scraped.txt
printf "${YELLOW}[+] Hosts separated${NC}\n" 
