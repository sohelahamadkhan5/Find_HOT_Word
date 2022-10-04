# f=$(find . -type d)
mkdir ./HOT_FOLDER2
for i in $(find . -type d)
do  
    # sleep 1
    # echo "this is FOLDER: $i"
    for myfile in $i/*
    do
        if [ -f "$myfile" ];then

            check=$(grep -ni "ani" "$myfile")
            if [ -z "$check" ];then
                echo "NOT FOUND"
            else
                echo "FOUND HOT WORD in '$myfile'"
                cp "$myfile" ./HOT_FOLDER2 
                $check>>HOT_FOLDER2/$myfile
            fi    

        else
            echo " $myfile is a DIRECTORY"
        fi    
    done

done