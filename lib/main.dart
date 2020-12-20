import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Home(),
    );
  }
}




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {
    int sem = 1;  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor:Colors.grey[900],
        appBar:AppBar(
            title:Text('School Id'),
            centerTitle:true,
            backgroundColor:Colors.grey[850],
            elevation:0.0,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed:(){
                setState(() {
                    sem += 1;
                });
            },
            child:Icon(
                Icons.add,
                color:Colors.grey[400],
            ),
        ),
        body:Padding(
            padding:EdgeInsets.fromLTRB(30.0, 40.0, 25.0, 0.0),
            child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                    Center(
                        child:CircleAvatar(
                        backgroundImage:NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAREBAQEBAVEBAVDRIbDRYVDQ8QEA4SIB0WIiAdHxkkKDQgGCYxJx8fJDIlMSsuMDAwIyI0ODMuNykuLy0BCgoKDg0OGhAQFy0dIB0tLS0tKy0tLS0tLS0tKy0tLS8rLS0tLSwtKysrLS03LS0tLS04LTgtKy0vNTcrLS0tLf/AABEIAMgAyAMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABQIDBAYHAQj/xABBEAABAwIEAwUFBQUGBwAAAAABAAIDBBEFEiExBkFREyJhcYEHMlKRsRRCocHRFSNicuEzNWRzdPAkJTRjgpLx/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECBAMF/8QAJBEBAQACAgICAgIDAAAAAAAAAAECEQMhBDESQSJRE2EycYH/2gAMAwEAAhEDEQA/AO4oiICIiAiIgIiICIiAiLBxbFYKWMyzyCNg5k7+Q5oM5FyTH/bMxpLaSHN0fISL/wDiFrI9sWI5r2itfbslG06fQKLk3DXtijkcGVkYjuf7Rly0ebd11KkqmSsbJG4PY4Xa4G4IUml9ERECIiAiIgIiICIiAiIgIiICIiAiIgIiwMaxOOlgknkNmsaT/MeQQRnGHFUOHw5nd+Zw/cx31eep6BcC4hxaqr5DJM4k/daPdYOgCma+SWtmdUzOuXO21sxvIBXaSiaNguHJzTFp4+G1qlPgL3HUG3JZTuGHf/AVvdJR3topL9njLey5fy5V2/jxjjtXhT4ybA6baHVbb7PuNZqCURyEvpyRnYdcviPFTNfQgkgha5X4KLkt0Ktjz96qufB1uPouhrGTRsljdmY5t2kLJXHfZTxI6GX7FObRvP7kk6Mk6eq7EtMrHZqiIilAiIgIiICIiAi8C9QEREBERAREQFzb2vVxIp6UbEl8o5EDQfmukrkPH/7zEntuTlijAGvd0ufqq5elsJuoKFndFtrLMpmAKzO5sYGYgX90cyqqesiJF328wV52Uu3p42abPhsYspCVvdsrOFNYWhzXhwI3CkJILhdsfThle2sV0Q3ULURc1suJUxsbBa9LcXBCz5+2jG9IDEYi1we02cCC0+K7vwrif2mjgnPvOjGe3xDQrjk8Ic03C6H7JpL0T28mVLw3ys0/mt3Bd4sXkTvbd0RF3ZhERAREQEREFERu0H+EKtYuFvzQxHrEz6BZSAiIgIiICIiAuS8TxH9q1P8AIw/NrVvvGeIS09HLPCLuZlLrAE5Li9lz+fEHVUvbvADhTgOIBaX6m1xyK555ydOvHhb+SDxGrijkL5LaaDbT9FaqMWpZGnvZHA21Ydzyusx2EiRwdYFweCLtDhceHNS/7IY+qbVyRgyDKcoJ7JzxaxLV5+Hwyt3W/Lck0h8GrXM906eB0KnpcYc1ut1iz0zI3uytDcz8xAFg087Dklc/M1o3sudur7Xk39IfEcSnlJDXEeXL9Fahw5wAvOc55ZgbqciwqCVkolae9FaKxNonfFl+8VAO4cjZC+73uqi8dm5gLImAfw+K7ST4/wCTnv8ALUiRp4jkcHakA6jnv8lunslYRSTE7GpNtLbNatMo2uDHNcdQw6+i6LwDEyGihi7RhkcC9wD2l3eN9vKy0+PfxZfI9toREWlmEREBERAREQRvDkZbSUzSS4injBJ3OgUksDAv+lp/8iP6BZ6AiIgIiICIiDExOnEkMsZFw6Jw/ArlRaGGQg3BAHkRddfK5txBgEkLpZLAxEktII7tzoCFw5cLbLPpo4c5JZftg4aRppdS7CACTpotboZyDZSc0/dN+YWDCSXtsy7YvZGSS5NgT3blXcUw7IAWva4+BUFS4UTIZPtEnaD3BnPZ+ALV7idBVPALqgwuHuhlnX87qv8AHuum9J/DX3aQRZwV6UA7qIwd8oBMrgXbXHNZU1Spyx60r9rbgA53TKb/ACWRwRh0r8QjfmtDHAXZQN3G4F1hNmtmda/K197roHBNEWQdo4Wc/bT7outHBhd4z9OHLnJjlf302RERb2AREQEREBERBg4KQaaAgWHYssPQLOUVwu69FSn/AA8f0ClUBERAREQEREBRHE8WelmH8N/lZS6x6mMOa5p2LSChvTi5OV1/Fe1dcQWgRvkJ+FpIHn0V/FqN0MskbhqD3fEcli08rm2c0XI5dV5/Jj8cu3pYZfKdJKkqWW1blPPM2yrqa6Ei/d9LWVyh4kpQ0iazXcw9p/2V7XY7REAR5HHo0BxTrSyIir4y+zHi/S6uTvusaeRrn5xG1h/lAKus1LQNSToomG70rcte248D4WyTO+RgeBbKCLi/Vb40ACw25KJ4couxgY0+8dX+alwt+OOpp5+eW7XqIisqIiICIiAiIgh+EnXoaY/9kciFMKA4DmL8Nonnc0rL7qfTWgREQEREBERAVEmyrWme0HFH5YqGB1pqiRrXkHVjCbel0iKg/aFWM7WFzSHNMZuRY8z81rlLO2/Udbf7sth4+w0RPgY0dwU7GsNt8un6KjgmeJjJIJBcvk0BbcEEC91j57vLTfwTWEqw2GncO+1p8wrFRT07dY2geVlA8axVFPVGCBpe1wBitcmx5eizMJwl5aO3JzcwHGw8Fw3076+1TrX30W28F4VHJ/xLu9Z1ohyvpr4rRcXoixwDXEsPInbZdN4TcIYaWF+jpY3vj8bW0+RutXj6rL5G5N/ttUIWQrUQV1aqxwREUJEREBERAREQa9wAR+zKKwyj7O2w6brYVr/AI/5ZR/6cfUrYFN9giKh7w0XJAA3JIACgVotexLjCkhuA/tHdG7fNatX+0aQ3EUTWDq4lxRFsdIc4AXJsOZJ0WvYzxnR017v7R3Rlj+K5fivEtRNcySEjpezfktbkkdISSbhTpW5t9xP2j1ExIgaII+R0dIf0UZw1XOkxKmfK4vJmAJJvc2IWqQz3BFrOHLr4qRwWp7KaGT4ZmH0BClT5O38UYb9opZWhodIGkw7Xzja3nsuaYUx4s8jKb7Eaj9FvPEPEBF44CL/ff08Atap4r6nXXVYfIyx3/b0/HmUx7ezwukdnfvbTy/JRVbNIARGLu2F/dHieq2Ut0VptEwDULNY0StYosNaQDOTKcwL9ctxpcDoFs3tFqjC7DZou6WPeWDo2zNFGz2bIO5naDsTlb69R4K1ib+0Y50zsx3uTt5dF34uWYT/bPzcdz/42LBfaJTyEMnaYXfF7zL/ULdKeoZI0OY4Padi1wIXzlPoSpDB8enpXDJIWg8r6H0W95/yfQSLmWGe0SUWErGyDnbuu/RbnhPE1LUWDZMr/AIXd0/oVC200iIiRERAREQQXA3920f8Ap2/mp1QHAn920f8AkD6lTNVO2Nj5HGzWsJcegAU32ILiLi6ClBaCJJh9wH3fPouZY1xPUVJ77yG30aLhg9Oagq+sMkzpCdXveT53JVDnKZHLLJkOlJ3KstkXjSqJNNU0rtTVu0VMI0VMrrquI7jyRDxzBe9tQq4xqvbKuEXc0dXBLdJk7bfBOTlubm3e81LU50Chqduym6FvPkF5N7ye5JqM9jdlaqXE90epV2R2niVZLgwXO6mqxZkY0CxFzbda5UUsk0pzOywN+7zkd49Ap8BzjmOgCjcZq2xMc8m1mn1VJe+k301TGomRvIbtbYa2PRRLISSXOPePyHgFc+0F5LjuTcq5dethLMZK8fOy5WxVDLbRZ0MxGoKinu1WVC9WsRK2/BeMqmCwzdoz4XXPyPJdDwHiinqgAHZJObHEfgea4ndVxTOabtJBvpqVGlvk+hkWgcGcaZy2nqT3zYRP+LwK39QuIiIIPggWw6j/ANO1YntIqCzDagjdwa30JCz+EG2oKQf4Zn0VjjuBr8Pqg4gARXBPUEEKb7R9OAtkuLjcG/qslxuLhYJbkJcNW373gsmndu3lu3yVtOC9C9VOWIHWd5rIzILbgqozr6Kl6qby80FwquhaXSsAHNW3LY+HcPsM7h3nbeAXHmzmGLv4/Hc85/SVpoLAKcpwAAFi08OqzC1edP29aqnOWNILnXZXX6KOqawA2CraiPa6rDGk7ADU8guW8RcQmpkyRn90Dv8AGeviFsvtQbLFRxgksdNMBl55ACTf8NFodDTWstfBw6/LJk5+br4xKUpOizXGzSVj08avzfdHqVtkefVtxV+nVk6q+3QKahezK41Y11ea5QLtLLlkzA2ILbH8V9BUkofGx4Nw5jTfrcBfN5eQBbcu09V3bgOp7SggN7lrS0+hUOuFbAiIoXYuFwdnBFH8MTB8gFpPtexPJTR07TYyPu/+Qf1+i6AuJ+1irLq9zDsyNgb8rn6qYrldRpjATsbH8D4FWgXNO2x25j9QsiMJMwO0PoeatHClU24DgqoX3CopQQwscbkbHqOSpYbafJSMqyocqg9XGR5jfkoTImMHwV80b59OzjewOHM3+gWy0rMtlgcE4o2CUxyf2EoyyjkOh8LLY8UoDDJk3adYz8TVh8rC3WT0vEyxk+P2piffwWU0/JYFyPRY2L4u2OF2oBy6+Cy7arGHxRxBHTxvfe+VuwFz09FomAY3LU1dLNG8gx1LDNFe+eMkDMPisDqPVQeN1E4m+2RvEsLjZpFywDmx7eXkd1n4TRBhhraYlrDKNAe9TSc2nw6HmFt4eCTu+2Pl5rep6bt7adZ6SL4Y3uPqQB9CtJhhW4e0ubtMSd0ZBGPUi/5rXGMWrTHlVULLKiQ3cfDQK836KywX166qYpXsTdV7I7UNVTdNSsWF9y53jYIMglVyyWFuv4BWmHc8lgiftJC0bbvPRvIeqVDOhdfvHb7nkuv+yWcmmmbybNp6j+i422S+v/qPBde9kVuwnF9e1bpz2UVfC9ugIiKrqLjXtfpA2sY+/wDaQtPkRcfouyri/tbrBLXNjG0UQDv5jc/mEVy9NJY1wO1x4K84AqunHIqt4XSODBLw1410Oi9qBY3VivicNRt9FdY7tGNPMjXzQi9T94gBSkbLALGoYMotueZWUqrelYcuncKVja6k7GQ/vohZp0zW5H8iuXKU4fxZ1LPHK3a9nj4m8woslmqtjl8buNpxZj4nGJws4c9bEdQoSt4e+2U9US5zWMhJJba9xr66DZdQqqGCsjjc7vNIBY4GxsfFavxtVQUNG6lgkbBJM0taXOLiGkgEnoNbX5XWXHx5M9/TffI3hr7cQoaSSkeQ4NlhkZqNTDUx9fD6gqSwF7KactbeSll3abZiy4uD0c08/I81VhrzEX0tU09lm1GmeF/xt6/RwVQwp7J+yuDnjc+lcPcmIBOnS4uLdQFsk6ZLWfjtQJauokBuDMQ3yFgPosJwXlMe6L7kXPmvXqHFRIe6ep0CRhUVDvdHqV61+ilCnEJLNsOasxizQFi1U2aVrempWQ110kTatYtUFkYa333mzFTTU3Zxht7ucf3h6q1VTN7TMdcoswePNIhI9wBNtb2H3QpEhRs1J5A2C3D2e4z2VbG1p7r3ZJByIO34rTJJNo26NHvHr4LYuBKMvrqYAWAlafQa/koqcfbv6Iio7C4PxnKH19U4bdsR8rD8kRTFM/SFAXrkRXcWLUbWVykp+yaL7k38l6iipxZ0SqcURQlTdehEUUbzwZxdHT08zKl2WOONz4yeg3b+i5njGKvxGaWpk0MgtE29+yjHuj80RTFrel3DpBOxsExDJWi1PK46D+B56dDy8lj1lRNEPs7wQWzXaDfPDJsS08roilNrIj0VeUFEUKMZ8T3OcQLi9htyVEjZLHuO+RRFEyVqLo6OcyPc6MtH3c1mrOdTOaQS4W52Nz/REVbyX0lDxh75X2H37X5N2UwQI2hrfeO55+aIuv0lkUkPgt29mz2tr483Nrw3+YgoiqnH27MiIquz/9k='),
                        radius:40.0,
                        ),
                    ),
                    Divider(
                        height:70.0,
                        color:Colors.grey[200],
                    ),
                    Text(
                        'NAME',
                        style:TextStyle(
                            color:Colors.grey,
                            letterSpacing:2.0,
                        ),
                    ),

                    SizedBox(height:20.0),

                    Text(
                    'Kayongo ',
                    style:TextStyle(
                        color:Colors.yellowAccent,
                        letterSpacing:2.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height:20.0),

                    Text(
                        'Semester',
                        style:TextStyle(
                            color:Colors.grey,
                            letterSpacing:2.0,
                        ),
                    ),

                    SizedBox(height:20.0),

                    Text(
                    '$sem',
                    style:TextStyle(
                        color:Colors.yellowAccent,
                        letterSpacing:2.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height:20.0),
                    Row(
                        children:<Widget>[
                            Icon(
                                Icons.email,
                                color:Colors.grey[400],
                            ),
                            SizedBox(width:10.0),
                            Text(
                                'Kaonbrian@gmail.com',
                            style:TextStyle(
                                color:Colors.white,
                                letterSpacing:1.0,
                                fontSize:15.0
                            )
                            ),
                        ],
                    ),

                ],
            ),
        ),
    );
  }
}