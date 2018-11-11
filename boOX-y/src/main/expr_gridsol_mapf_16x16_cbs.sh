ROBOT_LIST=`cat robots_16x16`
SEED_LIST=`cat seeds_10`
SIZE=16

for ROBOTS in $ROBOT_LIST;
do
  for SEED in $SEED_LIST;	
  do        
    echo 'Solving grid instance '$SIZE'x'$SIZE' with '$ROBOTS' agents ...'
  ./mapf_solver_boOX --algorithm=cbs++ --timeout=1024 '--input-file=grid_'$SIZE'x'$SIZE'_a'$ROBOTS'_'$SEED'.mpf' '--output-file=mapf-cbs_grid_'$SIZE'x'$SIZE'_a'$ROBOTS'_'$SEED'.out' > 'mapf-cbs_grid_'$SIZE'x'$SIZE'_a'$ROBOTS'_'$SEED'.txt'
  done
done