# * contém
# $ termina com
# ^ começa com

After('@logout') do
    find('a[href*=dropdown]').click
    find('a[href$=logout]').click
end