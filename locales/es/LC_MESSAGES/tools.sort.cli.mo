��    *      l  ;   �      �  �   �  �   Y  �     O   �  (   4      ]  �   ~  !   	  +   +  '   W  �     9  d  �  �	  z  G  �   �  �  w  B  )  1   l  �   �  8   u  z  �     )  &   .  �   U  &   �       !   3  �   U          8  �   R     
  �     �   �  �     I   �  r   �  �   ]     9     @     I  ]  W  �   �  �       E   V   K!  .   �!  &   �!  �   �!  )   "  /   �"  -   �"    #  V  $    v%  �  z'  �   M*  �   +  a  �0  4   	2  
  >2  I   I3  �  �3     h5  +   n5  �   �5  6   k6     �6  "   �6  �   �6  !   �7  #   �7  �   �7     �8  �   �8  �   �9  �   %:  T   �:  �   ;    �;     �<     �<     �<                          '                   !                           "      (                                          #               *                  	   %   $                )             
   &        Adjust the '-b' ('--bins') parameter to control the number of bins for grouping. Each image is allocated to a bin by the number of degrees the face is orientated from center.  Adjust the '-b' ('--bins') parameter to control the number of bins for grouping. Each image is allocated to a bin by the percentage of color pixels that appear in the image.  Adjust the '-b' ('--bins') parameter to control the number of bins for grouping. The minimum and maximum values are taken for the chosen sort metric. The bins are then populated with the results from the group sorting.  Adjust the '-t' ('--threshold') parameter to control the strength of grouping.  option is deprecated. Use 'color-black'  option is deprecated. Use 'yaw' Deprecated and no longer used. The final processing will be dictated by the sort/group by methods and whether 'keep_original' is selected. Input directory of aligned faces. Like 'face-cnn' but sorts by dissimilarity. Like 'hist' but sorts by dissimilarity. Logs file renaming changes if grouping by renaming, or it logs the file copying/movement if grouping by folders. If no log file is specified  with '--log-file', then a 'sort_log.json' file will be created in the input directory. Output directory for sorted aligned faces. If not provided and 'keep' is selected then a new folder called 'sorted' will be created within the input folder to house the output. If not provided and 'keep' is not selected then the images will be sorted in-place, overwriting the original contents of the 'input_dir' R|Choose how images are sorted. Selecting a sort method gives the images a new filename based on the order the image appears within the given method.
L|'none': Don't sort the images. When a 'group-by' method is selected, selecting 'none' means that the files will be moved/copied into their respective bins, but the files will keep their original filenames. Selecting 'none' for both 'sort-by' and 'group-by' will do nothing R|Float value. Minimum threshold to use for grouping comparison with 'face-cnn' 'hist' and 'face' methods.
The lower the value the more discriminating the grouping is. Leaving -1.0 will allow Faceswap to choose the default value.
L|For 'face-cnn' 7.2 should be enough, with 4 being very discriminating. 
L|For 'hist' 0.3 should be enough, with 0.2 being very discriminating. 
L|For 'face' between 0.1 (more bins) to 0.5 (fewer bins) should be about right.
Be careful setting a value that's too extrene in a directory with many images, as this could result in a lot of folders being created. Defaults: face-cnn 7.2, hist 0.3, face 0.25 R|If selected then the input_dir should be a parent folder containing multiple folders of faces you wish to sort. The faces will be output to separate sub-folders in the output_dir R|Integer value. Used to control the number of bins created for grouping by: any 'blur' methods, 'color' methods or 'face metric' methods ('distance', 'size') and 'orientation; methods ('yaw', 'pitch'). For any other grouping methods see the '-t' ('--threshold') option.
L|For 'face metric' methods the bins are filled, according the the distribution of faces between the minimum and maximum chosen metric.
L|For 'color' methods the number of bins represents the divider of the percentage of colored pixels. Eg. For a bin number of '5': The first folder will have the faces with 0%% to 20%% colored pixels, second 21%% to 40%%, etc. Any empty bins will be deleted, so you may end up with fewer bins than selected.
L|For 'blur' methods folder 0 will be the least blurry, while the last folder will be the blurriest.
L|For 'orientation' methods the number of bins is dictated by how much 180 degrees is divided. Eg. If 18 is selected, then each folder will be a 10 degree increment. Folder 0 will contain faces looking the most to the left/down whereas the last folder will contain the faces looking the most to the right/up. NB: Some bins may be empty if faces do not fit the criteria.
Default value: 5 R|Selecting a group by method will move/copy files into numbered bins based on the selected method.
L|'none': Don't bin the images. Folders will be sorted by the selected 'sort-by' but will not be binned, instead they will be sorted into a single folder.  Selecting 'none' for both 'sort-by' and 'group-by' will do nothing Sort faces using a number of different techniques Specify a log file to use for saving the renaming or grouping information. If specified extension isn't 'json' or 'yaml', then json will be used as the serializer, with the supplied filename. Default: sort_log.json This command lets you sort images using various methods. Whether to keep the original files in their original location. Choosing a 'sort-by' method means that the files have to be renamed. Selecting 'keep' means that the original files will be kept, and the renamed files will be created in the specified output folder. Unselecting keep means that the original files will be moved and renamed based on the selected sort/group criteria. data faces by Pitch (rotation up and down). faces by Roll (rotation). Aligned faces should have a roll value close to zero. The further the Roll value from zero the higher liklihood the face is misaligned. faces by Yaw (rotation left to right). faces by blurriness. faces by fft filtered blurriness. faces by the estimated distance of the alignments from an 'average' face. This can be useful for eliminating misaligned faces. Sorts from most like an average face to least like an average face. faces by their color histogram. faces by their landmarks. faces using VGG Face2 by face similarity. This uses a pairwise clustering algorithm to check the distances between 512 features on every face in your set and order them appropriately. group settings images by the average intensity of the converted Cg color channel. Green images will be ranked first and red images will be last. images by the average intensity of the converted Co color channel. Orange images will be ranked first and blue images will be last. images by the average intensity of the converted Y color channel. Bright lighting and oversaturated images will be ranked first. images by the average intensity of the converted grayscale color channel. images by their number of black pixels. Useful when faces are near borders and a large part of the image is black. images by their size in the original frame. Faces further from the camera and from lower resolution sources will be sorted first, whilst faces closer to the camera and from higher resolution sources will be sorted last. output settings sort settings Project-Id-Version: faceswap.spanish
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-09-23 14:16+0100
Last-Translator: 
Language-Team: tokafondo
Language: es_ES
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
Generated-By: pygettext.py 1.5
X-Generator: Poedit 3.0.1
  Ajuste el parámetro '-b' ('--bins') para controlar el número de contenedores para agrupar. Cada imagen se asigna a un contenedor por el número de grados que la cara está orientada desde el centro.  Ajuste el parámetro '-b' ('--bins') para controlar el número de contenedores para agrupar. Cada imagen se asigna a un contenedor por el porcentaje de píxeles de color que aparecen en la imagen.  Ajuste el parámetro '-b' ('--bins') para controlar el número de contenedores para agrupar. Los valores mínimo y máximo se toman para la métrica de clasificación elegida. Luego, los contenedores se llenan con los resultados de la clasificación de grupos.  Ajuste el parámetro '-t' ('--threshold') para controlar la fuerza de la agrupación.  la opción está en desuso. Usa 'color-black'  la opción está en desuso. Usa 'yaw' En desuso y ya no se usa. El procesamiento final será dictado por los métodos de ordenación/agrupación y si se selecciona 'keepl'. Directorio de entrada de caras alineadas. Como 'face-cnn' pero ordenada por la similitud. Como 'hist' pero ordenada por la disimilitud. Registra los cambios en el nombre de los archivos si se agrupa por nombre, o registra la copia o movimiento de archivos si se agrupa por carpetas. Si no se especifica ningún archivo de registro con '--log-file', se creará un archivo 'sort_log.json' en el directorio de entrada. Directorio de salida para caras alineadas ordenadas. Si no se proporciona y se selecciona 'keep', se creará una nueva carpeta llamada 'sorted' dentro de la carpeta de entrada para albergar la salida. Si no se proporciona y no se selecciona 'keep', las imágenes se ordenarán en el lugar, sobrescribiendo el contenido original de 'input_dir' R|Elige cómo se ordenan las imágenes. Al seleccionar un método de clasificación, las imágenes reciben un nuevo nombre de archivo basado en el orden en que aparece la imagen dentro del método dado.
L|'none': No ordenar las imágenes. Cuando se selecciona un método de 'agrupar por', seleccionar 'none' significa que los archivos se moverán/copiarán en sus contenedores respectivos, pero los archivos mantendrán sus nombres de archivo originales. Seleccionar 'none' para 'sort-by' y 'group-by' no hará nada R|Valor flotante. Umbral mínimo a usar para agrupar la comparación con los métodos 'face-cnn' 'hist' y 'face'.
Cuanto más bajo es el valor, más discriminatoria es la agrupación. Dejar -1.0 permitirá que Faceswap elija el valor predeterminado.
L|Para 'face-cnn' 7.2 debería ser suficiente, siendo 4 muy discriminatorio.
L|Para 'hist' 0.3 debería ser suficiente, siendo 0.2 muy discriminatorio.
L|Para 'face', entre 0,1 (más contenedores) y 0,4 (pocos contenedores) debería ser correcto.
Tenga cuidado al establecer un valor que sea demasiado extremo en un directorio con muchas imágenes, ya que esto podría resultar en la creación de muchas carpetas. Valores predeterminados: face-cnn 7.2, hist 0.3, face 0.25 R|Si se selecciona, input_dir debe ser una carpeta principal que contenga varias carpetas de caras que desea ordenar. Las caras se enviarán a subcarpetas separadas en output_dir R|Valor entero. Se utiliza para controlar el número de contenedores creados para agrupar por: cualquier método de 'blur', método de 'color' o método de 'face metric' ('distance', 'size') y 'orientación; métodos ('yaw', 'pitch'). Para cualquier otro método de agrupación, consulte la opción '-t' ('--threshold').
L|Para los métodos de 'face metric', los contenedores se llenan de acuerdo con la distribución de caras entre la métrica mínima y máxima elegida.
L|Para los métodos de 'color', el número de contenedores representa el divisor del porcentaje de píxeles coloreados. P.ej. Para un número de contenedor de '5': la primera carpeta tendrá las caras con 0%% a 20%% píxeles de color, la segunda 21%% a 40%%, etc. Se eliminarán todos los contenedores vacíos, por lo que puede terminar con menos contenedores que los seleccionados.
L|Para los métodos 'blur', la carpeta 0 será la menos borrosa, mientras que la última carpeta será la más borrosa.
L|Para los métodos de 'orientation', el número de contenedores está dictado por cuánto se dividen 180 grados. P.ej. Si se selecciona 18, cada carpeta tendrá un incremento de 10 grados. La carpeta 0 contendrá las caras que miran más hacia la izquierda/abajo, mientras que la última carpeta contendrá las caras que miran más hacia la derecha/arriba. NB: algunos contenedores pueden estar vacíos si las caras no se ajustan a los criterios.
Valor predeterminado: 5 R|Al seleccionar un grupo por método, los archivos se moverán/copiarán en contenedores numerados según el método seleccionado.
L|'none': No agrupar las imágenes. Las carpetas se ordenarán por el 'sort-by' seleccionado, pero no se agruparán, sino que se ordenarán en una sola carpeta. Seleccionar 'none' para 'sort-by' y 'group-by' no hará nada Clasificar los rostros mediante diferentes técnicas Especifica un archivo de registro que se utilizará para guardar la información de renombrado o agrupación. Si la extensión especificada no es 'json' o 'yaml', se utilizará json como serializador, con el nombre de archivo suministrado. Por defecto: sort_log.json Este comando le permite ordenar las imágenes utilizando varios métodos. Ya sea para mantener los archivos originales en su ubicación original. Elegir un método de 'sort-by' significa que los archivos tienen que ser renombrados. Seleccionar 'keep' significa que los archivos originales se mantendrán y los archivos renombrados se crearán en la carpeta de salida especificada. Deseleccionar 'keep' significa que los archivos originales se moverán y cambiarán de nombre en función de los criterios de clasificación/grupo seleccionados. datos caras por Pitch (rotación arriba y abajo). caras por Roll (rotación). Las caras alineadas deben tener un valor de balanceo cercano a cero. Cuanto más lejos esté el valor de Roll de cero, mayor será la probabilidad de que la cara esté desalineada. caras por guiñada (rotación de izquierda a derecha). rostros por desenfoque. caras por borrosidad filtrada fft. caras por la distancia estimada de las alineaciones desde una cara 'promedio'. Esto puede ser útil para eliminar caras desalineadas. Ordena de más parecido a un rostro promedio a menos parecido a un rostro promedio. caras por su histograma de color. caras por sus puntos de referencia. caras usando VGG Face2 por similitud de caras. Esto utiliza un algoritmo de agrupamiento por pares para verificar las distancias entre 512 características en cada cara de su conjunto y ordenarlas apropiadamente. ajustes de grupo imágenes por la intensidad media del canal de color Cg convertido. Las imágenes verdes se clasificarán primero y las imágenes rojas serán las últimas. imágenes por la intensidad media del canal de color Co convertido. Las imágenes naranjas se clasificarán en primer lugar y las imágenes azules en último lugar. imágenes por la intensidad media del canal de color Y convertido. La iluminación brillante y las imágenes sobresaturadas se clasificarán en primer lugar. imágenes por la intensidad media del canal de color en escala de grises convertido. imágenes por su número de píxeles negros. Útil cuando las caras están cerca de los bordes y una gran parte de la imagen es negra. imágenes por su tamaño en el marco original. Las caras más alejadas de la cámara y de fuentes de menor resolución se ordenarán primero, mientras que las caras más cercanas a la cámara y de fuentes de mayor resolución se ordenarán en último lugar. salida ajustes ajustes de ordenación 