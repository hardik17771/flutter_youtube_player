from pytube import YouTube

link = "https://www.youtube.com/watch?v=dQw4w9WgXcQ"

yt = YouTube(link)
stream = yt.streams.filter(file_extension='mp4').first()
stream.download()