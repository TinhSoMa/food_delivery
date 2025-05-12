import 'package:flutter/material.dart';
import 'package:food_delivery/base/thumbnail_image.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimension.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({super.key});

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  String selectedSize = 'Vừa';
  String selectedImage = 'assets/banners/b2.jfif';

  final Map<String, int> priceMap = {
    'Nhỏ': 18000,
    'Vừa': 20000,
    'Lớn': 25000,
  };

  final List<String> imagePaths = [
    'assets/banners/b2.jfif',
    'assets/banners/b1.jfif',
    'assets/banners/b1.jfif',
    'assets/banners/b2.jfif',
    'assets/banners/b1.jfif',
  ];

  @override
  Widget build(BuildContext context) {
    final selectedPrice = priceMap[selectedSize]!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: Dimension.width20),
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
            size: Dimension.iconSize24 + 6,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: Dimension.height30),
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: Dimension.iconSize24 + 6,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 330,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      selectedImage,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:
                            imagePaths
                                .map(
                                  (path) => Padding(
                                    padding: const EdgeInsets.only(right: 12),
                                    child: ThumbnailImage(
                                      imagePath: path,
                                      onTap: () {
                                        setState(() {
                                          selectedImage = path;
                                        });
                                      },
                                      isSelected: path == selectedImage,
                                    ),
                                  ),
                                )
                                .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Text(
                'Bún đậu xì dầu – tình yêu không mắm tôm',
                style: TextStyle(
                  color: Color(0xFF3C2F2F),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  height: 1.35,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                children: [
                  Icon(Icons.star, size: 16, color: Colors.orange),
                  SizedBox(width: 5),
                  Text(
                    '4.9',
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.access_time, size: 16, color: Colors.grey),
                  SizedBox(width: 5),
                  Text(
                    '26 phút',
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Text(
                'Bún đậu chấm xì dầu – phiên bản “giả trân” của món ăn quốc hồn quốc túy. Không mắm tôm, không drama, chỉ còn lại xì dầu nhạt như crush seen tin nhắn không rep. Đậu rán giòn, bún trắng tinh, thịt luộc đầy đặn… rồi lỡ sa vào chén xì dầu mặn mòi nước mắt. Ai ăn món này thường là người từng tổn thương bởi mắm tôm hoặc đang cố "sống healthy" cho vui. Bún đậu chấm xì dầu – lựa chọn cho những ai yêu cái đẹp nhưng sợ mùi thật, như yêu người nhưng sợ dính líu cảm xúc.',
                style: TextStyle(
                  color: Color(0xFF6A6A6A),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.72,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Chọn kích thước',
                            style: TextStyle(
                              color: Color(0xFF3C2F2F),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 10,
                            children:
                                priceMap.keys.map((size) {
                                  final isSelected = size == selectedSize;
                                  return ChoiceChip(
                                    label: Text(size),
                                    labelStyle: TextStyle(
                                      color:
                                          isSelected
                                              ? Colors.white
                                              : Colors.black87,
                                    ),
                                    selectedColor: const Color(0xFFEF2A39),
                                    backgroundColor: Colors.grey[200],
                                    selected: isSelected,
                                    onSelected: (_) {
                                      setState(() {
                                        selectedSize = size;
                                      });
                                      // widget.onSelected?.call(size);
                                    },
                                  );
                                }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Số lượng',
                        style: TextStyle(
                          color: Color(0xFF3C2F2F),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFEF2A39),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x4FFF9900),
                                  blurRadius: 13,
                                  offset: Offset(0, 7),
                                ),
                              ],
                            ),
                            child: Icon(Icons.remove, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '2',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFEF2A39),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x4FFF9900),
                                  blurRadius: 13,
                                  offset: Offset(0, 7),
                                ),
                              ],
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                children: [
                  Container(
                    width: 104,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFFEF2A39),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 30,
                          offset: Offset(0, 9),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      width: 104,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEF2A39),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 30,
                            offset: Offset(0, 9),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${selectedPrice.toStringAsFixed(0)} đ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimension.font16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C2F2F),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 30,
                            offset: Offset(0, 9),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'ĐẶT HÀNG',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
