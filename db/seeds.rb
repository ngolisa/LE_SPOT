# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Reservation.destroy_all
Spot.destroy_all
User.destroy_all

user1 = User.new(email:"arthurmarie1991@gmail.com", username: "arthurmarie1991", password:"azerty", avatar: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhISFhUXFxUYFxUVFxUVFRcVFxUWFxUVFRUYHSggGBolGxYVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0dICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0uLSstLS0tLSstLf/AABEIAKgBKwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgMEAAIHAQj/xAA8EAABAwIEAwYFAgUEAQUAAAABAAIRAwQFEiExBkFREyJhcYGRMqGxwfDR4QcUI0LxUmJygpIkM2Sisv/EABkBAAMBAQEAAAAAAAAAAAAAAAIDBAEABf/EACsRAAICAgIBAwMEAgMAAAAAAAABAhEDIRIxBCJBURMycWGBscEUIwUzQv/aAAwDAQACEQMRAD8AW8bsuxhvXkgbijXEV72lWeggfnqgdw5S4ntDcvRDUeq7yt6hUJVpGjRy1K2cVqFgR61elZCyFxhtTGquO2VaiNVZrbLQJdlMr0L0NWpWBHjitmhYGreFpxKxV72p3g3TKPi13PpqIVkHKA7nOgIn1jmtXYfUqGAwjwDRPyCynN0kMglFcpFeiGk6ZdNZJMCOS9e0mRlIMFwc0QXdPRFbbhuoCAQfEaq1UwOsJyugaTOg6beSYvFn8Hf5MPkW7ZmUFzjtt1noVG2toZDCZ5t39ZRa9wt4Ec9yfvH5uqVbDCwSdSeS2eKVVRkckb7BtXyaPeR4TzHmvGVO6WxIPSOXjCmfbeBUVWkRoZKS4tDOVkRaDzjz5+C2ZUcFFC9zlYaWWtDvh84P7L2lVLCJMtUNJxmWmDzU72/3cuY6SuOC9B4I0RC2Zolq1rljp/tTTavBaCEUGR54cdoiulFbvW90VBRCKYtLRdbujNs7RCKLUSYdFyFtWyR51RvBWSQEFt2yU38O2JLgYTB8UdI4boZaYRhVrBkMAVlIfZVHoxYsWLAj5SvCZVQhEXkEqK5o6aIMMeXR2d0DHqFxUtVVymiUeFbNCwBeErjjcle0mFxgaqxZ2RqDRPXAXCTnHtKjfJElZvWxXo4LVicsKG4s3t3C69i1GnTEQEm4hVY4xAVMcEWhLyu+hFqtjkoY1TxXwRr2SEtWli3tHMqB+n+giR4wRry00ScmPixkXz6KPJYzwRG7wZ2Vz6LxVY34gAW1GDq6mdY8RIWmBYe64qspM3e4Ano3UvI8mgoH+hqjvYe4F4cdcVBVqt/pg90H+4jmfAQn22wtjarsrRp4azzKNU7FluGsYAA1gaAPAIdQqFtcg8yfz6q7DHjGkR+RPkzS1w7+oTHXX5KO+w3XlqTvHz6eaNU6ZGo3Mn2MGOuyH4r8XPUDu6eSZzbYCgkhYGGguO2nhoht7hYqvJA7o+QTXWp7gmMwJ03G+sdJ01QfEavZtiP3jmYW2d0KOLYcGCGga8vugNezIGmqZarnP1+f6KE0QP3QTimNhNoU7nDzExHT90LqAhON9VGyXLq16KPLiroqx5L7KNu+HAkadFbozJHKPrsPdVgFM92gI36fnkpx5GX5TB25/QwmLAq/dLZ228R+Slu4+/4FdwS5h4B9Fy0Bkjyi0Hq5WlJSXQUFBHIjXQTt1daFUtWojbMlFECPYQwa2LngQus4Bg+UAkJT4JwvM6SF1ClTAEBdKVFWONnrWxotlixKHmLFixccfJZOqv2rgRCpU2aqwwqjxocYic0rkU8Tt4MhDUexAS1BQEM1TMRooyVu8rxjUAQ38AZXOLXLt1B1OjSkRo1fPuBVjTqMI6gFdWxF76luQ08hstjs1y0A+JcVzuOUpSrVtU222CHIXOShjFGHEBWxlUSVr1DDgN5LSChtrDcQp5h3XHIf++g+cIfg9ctPgrV7eNBDh8QII8xslykpKx0bixvvMFFOoKjPib7OH9zT4EaKfhbBG08QrVAO62lpHWo4GY8mkeqktcTbXpNqN1a4erXD4mFEbe7ZSpF7nQaga0RqSGSJ8kvHG3Q/PP08ghi1TMQ5vJVaDRU5EOH5oVVw3FKZIGcOBPjJ6D6ow+m2JZuOm48/CVbfFUeXXN2zZru6QQZHPz0mQl66e59STsDHXwTA2qC2TGYabeaGW7QXARJJJHnKBMY0U7qmWw7MSdAQT0EAQPAfNAby1MkunwEchzj0TZdOJOVomOZmG9YQy7w6RmcSd+fLrA5IkwGqEq7rxoAUMrB5TVeUQT3A07jyiNx6/VCK9uZOo8gtaNiwL/LdSq9yABARC5p66lQOy8hKRJD4sVb1uq9ptOTN0/X91YxVmuyqsJynp+FRTWyuD0RlhI0H+VZoWoYQ6oYO4a34vU7BeWxIGnIn3UtGnJ/PdDYajbCIvKj/AIQ1o8sx9yrtCi4DM5xPmpbCi0DVSX1wJDG7N38+n51Qxcm9jM8MePHpbZesKWbRMNhh2ZwCscGWDTTDyJJTnZYaBUaY3TOdI8yEPcYeGcOFOmDGqOLSkyAAt0N2WRVIxYsWLjTFixYuOPkftoU9vWlUACpLfdVYtIRkVsJ357qBuKv3lfSENKXN2zonoC3YFjFu06pbNJH1IjwXSuGcZmiA7eFyy9qaJl4Su5EJmIzKqQ+Yji7WsiQkC9vA4k+KIcQXBiNEsk6pydC+PuXalcNagj7gucdVJf1+Sr2oSskrdDYKlbOjfwzqk07mmD8JpVBO3ezNd/8AliascvLamWsqQSBoBJ9gPRc/4GunU7ggCQ+lUDhMSGtNRseOZg9yidbhV1d91Vq5wW1GNazrmzOJOmwDI0jUnos+ssUeTCjjeX0k9zVo5oyuZJ0kObOvjumLAq8gNc7VpEGYzAkCCdhz1KQOJ2UqVzb2toytJYxtUVC5wfUdHfYwuIDRrtGx6Jq4bpva91KrLX040M95pmCDzGnzVGLyI5dfuTZsDx7XQ7BuroJgjT2OnzAQ6jVyhzo5aaaEnoeSL0GjIZmfsRvCE1cuUhxdvMjXw2+e/JMFlK/xB1NrWt+Jx26dCfMpNxviF8lrPXXSUQx68BGaZcdCIO+wJPMlId7e6wP2WTnxQUIcmXziVydGmB4fZRmtcDUz8iqhztyFwqjtNWFxbSa8SBLA7cTzUlxcVKcF7agH+4aT4OGiT9aPux/0X7IsW12HGHj12R6rh2WmHdSllrg8gjddGw2l2tkJ3AM9dB+y3lZyicqxky5ULfWZ2VrE3y50bSqrBDfP/KnydjodG9rrPST9URtG6wB+eKpWDO7vqSfaD+6INuWU9Sf1PgEuh0ZUEX1Cxu4k6eXiqts3VUbOqXNe50yXDyGhgBEcP3WkueTbs6LwMXwG+K6phtidHO5JP/hzYjIHHddIaIS12Zijo2WLFiMeYsWLFxxixYsXHHyBUkLai5W7ilJU/wDIwyVTTSEuSBFZ0lRLepuVoknGzVtTWgUzBAQs2K2VbxMPBdKUu1mlx0Cc+CrYtbJTcS2DmfpKfEjXByG24lHOJHhzkLtKaekKi9AHEfiXtmp8Xow5QWanmtlCfpGjhGm515btYYc6rTE/7cwL/wD6hy6NilR1tXcQA6k9xdAjM10nWDoQZPOec6kLnvAdQDEbYn+1zj69m4D6rsF1bNqA5ttz4mdNuiKEIzTUto5uWNRa9wOeKrNpBdTdmHONdd1Tt791xeGqKbW0uzYGEGSf6kkOjbfbdXa+A0GzFMTM6y47aR0W9pQDHkQATExpoJP2RYPDx45846F5vJlKDiw4RFMkA7c9/Az+bJTxe5AkGefjyJGnSefQpluKkUJ6/L8+657jd2ST3jHnMDaPBUk/wA+IbneTmPMzIgaCDz2Szhwa6swP0DnanlPIFEsQObzK9wuxdJGo31ETG/mp8sXPSKcUlDbGC/4LqXLqRdWqFrRlA1eA2ZhhJ7vpKPcR2dKnR7IgFx35w0dR90sv/maY7r3EbaOM9ZQ+paVqmru0duZcSRA5wfNQf4U7VytL9CpeTFW0gSKJY4huonz9J5rpHC1XNbkCZhwPt+6TRbZdNE8cM0Ay1qVDsGuM+Aaf2VyjxQhPk7OSX4GZ/QT+g+cKo4ZWifGPX/Ckr6/9nfIf5CgvHS6OmntASJu2HFUidlfs2CNXHmdh6c91SJkyTvzU1wPhH+1RBCEF8Pns9eunsjGEUS5wAQiypxTGm5Ptonb+H1sHVdVz0hORWzqPAlNzWgOB0hPoQjBbMNaDCJV64YJcgWthwVIlJhUauMUWmC8SlLi/HahblomPJcuvre5Li4vcSfFOjjlJWjHkitHehj1CY7Qe4V6hcsf8LgV81mlVGsunzKPcK8RV6Dxmc4snWUE4yh2EpJ9He1ipYViDazA5p3CurE01aNPlVrZciF46Kfoq1u3vKXFzDFbLUSRdiw/dWbLD31PhafNWcDw7tqrWcufkuvWGB06VMaBJhFPsOTro5pbcNO3cpamCLoF1bgjQIdSse9qqVjiIc5IVrHBhOoRw0RSZoiVzSaBpuh9xRc4QiavoG/kWbkBxJKHCpB0TLdYQQ0lCRZwVii26GJpKwfc2+cKg2zLSmP8AliVq+zgSeSKWJVZ0cjbpAfh25NK+ovO2dp9MwB+UrsVpe5Xuaec6k+a4Pe1stcTsAAfI7/VdLwbFf5iix894jX/kNHfMSpPCldp++z0PPSiko/8Altfx/dj9VqjLKE27sz3OnSfoP3VG2u3RB/X2CwXvZfGIaToeUzsVfqPZ5T9bpBvG6xFEAfnkuc4uYnr5e8poxrHqZAAmAPBI+I4w0k6fRKc4/I5Y5fAMz9+EbtdYPlPj4FLWYuqZwjVKtlaDy66xPTzQQYUhlBA/06eEg+6G3901u5n8/dCbjEXRGyH1qxduUUpJHRRcZX7SoGjmQn/iWqLbCnjm5ob6u2+X0SPw7TGcOOwI+qKfxNxU1RQt2nc5iPE6Nn3KQ3Y6PRz+pUGmmrWz6u1+kKkB3h5/dT3VXM5xGxMDyGg+QChoHvaKZjSW8Pe8miVENgvbg94+ywbBccHbJk02QZGv12TzwL3XylzArMvotIjSfqnPhHCX5s0QEMuhM+zseC1ZYF7jdAupmFTwV2QQVvjmKsZTMldB+wd6Ed2mh3VO+AA2UbMVD3ujaVHid+2NV6sSFsB1rkA7IhYWgqN7oS3c1gXaLo/8PsLzNLiNErya4h4m7KvDGMPtKnZVD3TtOw8F0Olj9EgHMNVzrj+zAe1rdCSoLTDKuRup2Xmca2mWLZz6h8QUmMuGRR2zCSFHi4IC9Kf2kq7C3A9INJeU6sxYOeKcpEwWtlp6Kvht1U/mg7kDqhS0Yrk9HYH2gDMyW7/EGtMCFDxBxaG0coMuIgQlHDazqj5cji3dDsmGKjb7G2375lXRbqPD6WgVsmE0iZRvmaJcq0xKP4lcAApPqX/fXckmMhByWgzQoqLGaYZRc49F5QvQAqPEWIh9Lsx/e5rZ6azPyWZ/+t/gLx7jli/hnPL4y8nfx8YE/NPHAduTavfO1aI82NM+SSr1m55EuI8pgJw4JxHsqNQu+E16TPV7QPqAvL+o8cotfKX7PR6MsfNNP4b/ALHrD6Wcjw1Kt31oHDKR7qtSuRTzOgnTQDU+gQHEeJnHV9GuG8h2bwIHUwvUnkUezy4YXN6BmPYJUFQ5Hd07AzogBwnKe9qepRSvxIHHTM0dNfwKpXxJjtnejtVLeO9FjjkrbNWUgNl45RC7b1Wzqk7I1JCWmQ1Xwqj6knRSVlC3RBJjEGba7FNojff1Qa6uy576riZAIb/ydoPYStK1aFQqVeXqgk9BxWzQj6L20bJ1Xj9j5wpbFknVJGEVf4nf8ituQ/PzZRuM+5Uhj5LTjo3CJAog8p2+f3XTuHizQrnfCFvNvrv3Y/8AEfv7J9wy2LWCAlsCXY4URIJCTOLg6Ik6prsapDIKWeJ3T6JmD7tgzvjoWMMtQ0Ekpe4hupfDSil5iBa0wlltXM4uK9OqVIjVt2zVlMiCZXdOB35bZpIiRIXIMPoirVYzWJE+S60bwMow3cCAos6a03Y+LTehP4puzVvmDkCR8k+2FqOzb5LlF9WIvKU8yZ9iuuWFYdm3yUUrsqUTieH0dVQ4ibEK5a3YDlVxV/aVGtHVepl6oiiHeGsMzMBPNe41aMpA5Y8Sr9vV7Kjp0SdjV6+od9JQjMS3yZEKJqOknRE2OFOIVSwaSNVWvqhD4lFaWimS+ouS6HfCsVEaq3WxCRolawHdlG7Bzcsnot5bEPBVNg28rF8gmEs3TS18eKmxjECKhynmtrOmahBK5SUlRS4xgtGV6pa2VRNTM2TsA93qO60f+R+SL47b5WBBatLJT1BDYaCeU6l3n8QSvIk0qJ8NSk5APEamrR0aAfPc/Mq82sRYVANCblnpFNx/RCa7pdPX9VeLv/RuH/yG/Ok79FDlV1+UVwdN/g6hw7iYrUaVUf8AYdHt3HuJV2/4lYww/KJ67LnH8PsYFKt2Lz3KpAHg/l77ey6Ne4LTq7tC9OD5x/U8+X+uQJqX9nVkltIx5Sl7FadsTpTZ6AJgxXhSgPgb8vZKeIYSGHQ+knTw/OqXLGxqyplE21OdAtiYWdiQo6qBaOezxz1C94CjqVYVSo8lC2akZUqStGbrFtQGpQSDRrX5D1VnD6ZMwJMQPM6fqqld0lEsI0jTTnrGvgUDdIOKuVA2I36qVurh6LSoZJPifqpaHxieoXGHS+F3FtMa6Zojp3Rp7yus8OMbUa0brkOCUXEBjf8AUT+i6bws51JwB2PNBIBv1DrcWQy6JHxWxfVc5rdhpK6G10t8whtnatBM85XJ07QdWcXx/CH0h3hI6pTe+CurfxPuWta1o3J5dAFyS8eZXowk3HkSSST4jbwhVpsBc6M30T3hLm1WZgZC4jRquJgE6rrXDNbs7Vo8FLm+RmGOxO4xrZbxkcj+fVPdhiv9NuvJcvx17qty541AP3RShijg0DXRTyKbBFAblSYWzNWk8lF2wyrexqhklehyUuiKcXEK8RYkGtDQl+2c6psFSxO6NRyb+ELAZASF3bMbqICqsqNGxUdCkSczk/YhYsy7BLN20BsBYtuw4ZGkkUDieUQFcw/EpadUJZYkyYWj2luyJJ9jM2Xlo0xACSVbwq7yoZXfK0pOKGOmZKVoOYnfdoAOuiEcUVC1lNgBAygnvTJf/UmOUtczQdFJbsl7QeZieTZ0zHwEyhfEVfPVcRESYjTTlpy01hJ8iVySGYI8YNg63EuHv7CVO1x/lnDrVYfam/8AVR2TJPiAfoVbwgE5d93nQSdGRt6lJl0Nht0CmkgyND15hdWwHi8VaIzGKjQA8eP+oeBXLrr4zCvcN0c1YDlldP56p+CbUlXuT5oqnfsdIuuIARyP5zSxf3wJlWquBNcAWveOoMEenNDa2BkHWoT5CPuqpuXwIjKJUrXAVCtXnZEn4ZHU+aq1KEKd2NUkDnA816Kat9mo3BBQVlZ+i8onQnzWVV7SHdPr9EMg4lfmjOHPDRrliIGbb/KD0xr6ojc5Q2DJJBiORQSVqhkHTsonn5lW7BpNVoHUKmNvVEcO/wDcBjlv0MGCuBOucEU2nJPT31K6RUpsDQdFy7hVpbTY7nH3R28x10QnR8aUlYiWVJtDjX4kZTZBKW6vHTJdB8AucY/ib3Ew4qjhQJOqJeMuVHfWajYy4xfOuHl7vRLl9QlMLKOip3NvpKs4qqJObbsCYfb98Ap4diLadFokbQkjMWvlaYhfEwJUubHZRilTHPhHCu2JJG5KdRwkw/2hCv4YXdNzsunwj9/quqNYIUPFtllo+SQ9Y+40ha3DYUVJslUYWBno2pM5ldF4ZcOzHkud3D40CdOGq39MJ8Hsjy9BvEK0iAg38nmOqI1HaSoaVUBNSFJsr17YNaly7GqYcRuRCXbh8lF7GplN9NRtbCnJUNRCNTJqAnMZjKJPkNY9YA9Uu3jpk7SYj6JhtmDI8nw9hLnfJseqXqnedIMHUknqdVHkfrKofaje0MZiNNC32a4k/Re2FSHsaQfhI0OXVxmSegCioOktB6PcfUFVHHcpbVqg4y4uz2qe8dUx8FMaKuYkatc3ycSC0eoBS0mrgWxbULy4SAWaDQmJJAPJNxXyTW6FZWuLsenW4BgKCvac4Q2+xTsrvKxtbsYbIqDVrjuAT8QTE+4YWZwRHVVwzRyQ5dfo+0QyxuD+RVv6QCBXVNGcTvm5on7IVVeDqlNp9D4plEUdVFUpq7nHLU9Bqqt5mAktIHiEtuKdNjEmwfVC8De64ny+UrAeZ6j91YtcOq1GPfTpVXNBjM1ji0dQ5wEAgRv1SZND4xZUtGy4epUlye9HQBa22hPgPwL2ue8fb2XHexCzYolQ0k7dwfN0fdDqQ0KItIAaeRyz76rDUdP4cuZoNnkXD5r3EXINgN6MrR11jp4I0/vFenifoRBk1NgC7sydVfwmyjcIu+wmNFds7FMUUtiZTb0QG20UNzRGVMAtUPxS0IGi5OzKoR7u11KDXVLVNF5ROqAXVIkpeZaHYXsu8M4o+3qh7T4EeC6tbfxCblEnWFyXB7XvapjFk1LjhhJWxjyyi9CbUoZitalMMCxYpYaiNytuQMqPkynDhx/dC9WJmPsVl+0M3LoahfbLFipiIQMvLpUC9YsXMYkQucvCF4sS2GSXNTLRiNamg8MxAJjrDPZ6A3JjPO8gCPAz9FixRPtlfSNbU677yPSD91Vj5rFi4w2en/8Ah5azRc7mXkjygD7FYsVPi/f+xN5T9A23lox47zRO2oQqzpG1LsjjyLJ3ZpEA+m6xYl/8ov8AQ3+P5QPit80gHjNTtJzSfPU9dClyiHOBEeR/ULFi8/wOmi3LrZapUTT1a7XofVVb+u9/xHTosWL0ZYYXyrZPHJJ6soOA9ft1TPwjduNtXpB1wQHZstNoLBLYzOOUxt1C9WKPyfsdl3it/UQs0dHukGZdvvvzVet8R81ixNXQmXbPKG58lbpv7rZ2nX3WLFxiGalWy9mdpkkdCcpj5ppwy5BIWLFbhk+CJc0VyY02rA5X6dMBYsVFk9JHrHSVXxNwDdV4sWG0IuKXEmAqTLU7rFiXN2a/TpGzn5CrTcR0XqxFhejZH//Z")
user1.avatar = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSALG1Yahyjl7cTfL0tUzW_tnx7itu8gENX0YGPRKfScCPS1OoX"
user1.save!

spot = Spot.new({city:'Paris', user: user1, address: "164 rue de la Pompe", description: "Magnifique terrain de tennis en plein coeur de Paris", price: 200})
spot.save!
