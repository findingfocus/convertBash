ffmpeg -loop 1 -i PodcastNetwork_Homiles.png -i ${INPUT} -r 30 -c:v libx264 -tune stillimage -acodec copy -pix_fmt yuv420p -shortest "${BASENAME%.*}.mp4"

INPUT=$(ls -I PodcastNetwork_Homilies.png | head -1)
BASENAME=$(basename ${INPUT})
"${BASENAME%.*}"
