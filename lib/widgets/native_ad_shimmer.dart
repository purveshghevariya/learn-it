import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

bannerNativeShimmer(BuildContext context){
  return SizedBox(
    height: 80.0,
    child: Shimmer.fromColors(
      baseColor: Colors.black45,
      highlightColor: Colors.white.withOpacity(0.8),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        height: 100,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black45,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10,),
                    Container(height: 8,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.black45),),
                    const SizedBox(height: 8,),
                    Container(height: 6,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.black45)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Container(height: 35,width: 80,
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    ),
  );
}
