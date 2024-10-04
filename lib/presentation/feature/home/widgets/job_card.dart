import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/categori/detail_categorie.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String imageUrl;
  final VoidCallback onTap; // Define the onTap parameter

  // Update the constructor to include onTap
  JobCard({
    required this.text,
    required this.imageUrl,
    required this.onTap, // Make onTap a required parameter
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Use the passed onTap function
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover, // Ensures the image covers the entire container
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
