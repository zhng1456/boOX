ROBOT_LIST=`cat robots_16`
SIZE_LIST=`cat sizes_16`

for SIZE in $SIZE_LIST;
do
    ROBOTS=$SIZE
    echo 'Solving path instance '$SIZE' with '$ROBOTS' agents ...'
    ../main/swap_solver_boOX --timeout=64 --algorithm=cbs+ '--input-file=path_'$SIZE'_a'$ROBOTS'.mpf' '--output-file=path_'$SIZE'_a'$ROBOTS'.out' > 'swap-cbs_path_'$SIZE'_a'$ROBOTS'.txt'
done
