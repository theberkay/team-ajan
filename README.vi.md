# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Dùng để làm gì

Cho một công việc của bạn (mã nguồn, tính toán kỹ thuật, đồ án kiến trúc, thiết kế sản phẩm / giao diện, bài tập, nghiên cứu, bài viết, kế hoạch) được xem xét không phải bởi một con mắt duy nhất, mà bởi các "đội" riêng biệt kiểm tra lẫn nhau; nếu muốn, cho sửa đến khi không còn lỗi. Đây là một gói plugin cho Claude Code. Bên trong có hai loại tệp: **agent** (chỉ dẫn mô tả cách một đội làm việc) và **skill** (chỉ dẫn mô tả cách Claude điều phối các đội).

## Cài đặt

1. Nếu bạn nhận gói dưới dạng tệp nén (zip), hãy giải nén vào một thư mục trước.
2. Nhấp đúp vào tệp `kur.cmd`. Trên màn hình phải hiện dòng chữ "Kuruldu".
3. Đóng Claude rồi mở lại.

`kur.cmd` chỉ sao chép các tệp agent và ba thư mục skill vào thư mục người dùng của Claude (`%USERPROFILE%\.claude`); nó ghi đè lên các bản cũ cùng tên, vì vậy đừng đặt tệp của riêng bạn vào ba thư mục đó hay với những tên đó. Nó hiển thị thư mục đích trên màn hình. Khi có phiên bản mới, chỉ cần chạy lại cùng tệp đó. Các cách cài đặt khác ở cuối trang.

## Câu đầu tiên sau khi cài đặt

Mở Claude trong thư mục chứa tệp cần xem xét và gõ một trong các câu sau. Trong câu phải có từ **"đội"**; nếu không, các đội sẽ không vào cuộc.

| Bạn muốn gì | Câu cần gõ |
|---|---|
| Chỉ xem xét, không động vào tệp của tôi | `cho các đội xem xét tệp rapor.md, không được sửa` |
| Xem xét và sửa | `các đội sửa tệp hesap.md cho đến khi không còn lỗi` |
| Tập trung vào một câu hỏi | `các đội chỉ xem điều này: tại sao bài test này thỉnh thoảng lại thất bại?` |
| Ý kiến của một đội | `đội đỏ hãy tấn công bài tập này` · `nhìn bằng con mắt của đội vàng` · `đội ngọc lam hãy tìm chỗ lãng phí` |
| Xem xét cả ghi chú của tôi | `đưa cái này cho các đội làm ghi chú: …` |
| Họ đang ở đâu | `các đội đang thế nào rồi?` |
| Tiếp tục từ chỗ dừng · dừng lại | `các đội tiếp tục đi` · `dừng các đội` |

Các từ kích hoạt skill được viết bằng tiếng Thổ Nhĩ Kỳ; những yêu cầu có từ "takım" / "takımlar" sẽ kích hoạt một cách đáng tin cậy; yêu cầu bằng ngôn ngữ khác có thể hoạt động nhưng chưa được kiểm thử.

Claude trước tiên đưa ra một bản tóm tắt ngắn (đã hiểu gì, đã giả định gì, bao nhiêu đội sẽ làm tối đa bao nhiêu vòng) rồi bắt đầu. Trong khi làm, Claude có thể xin phép để ghi tệp và chạy lệnh; số lần xin phép chưa được đo. Bạn có thể đồng ý với các quyền ghi vào thư mục `takim`; nếu không chắc về một quyền chạy lệnh, hãy từ chối, phép thử đó sẽ được báo cáo là "không thể kiểm tra".

## Điều gì xảy ra với tệp của bạn

- **Nếu bạn nói "cho xem xét", tệp của bạn không thay đổi.** Các đội được dặn chỉ ghi báo cáo và sổ ghi vào thư mục `takim` của riêng họ ("chỉ xem xét"); dù vậy một bản sao tệp của bạn vẫn được lưu vào thư mục `takim\yedek\`.
- **Nếu bạn nói "sửa"**, Claude trước tiên lưu bản sao tệp của bạn vào thư mục `takim\yedek\` và báo bạn "tệp của bạn sẽ thay đổi, bản sao lưu ở đây". Chỉ đội Xanh dương được ghi vào tệp của bạn.
- Nếu yêu cầu không rõ ràng, Claude không động vào tệp của bạn.
- Chưa xác minh được rằng các đội đọc được tệp Word hay PDF; Claude sẽ nói điều này ngay từ đầu và làm việc trên một bản sao đã chuyển sang văn bản.

## Khi nào kết thúc

Nếu bạn nói "cho xem xét", công việc kết thúc sau một vòng xem xét: Claude kể lại những gì tìm thấy và hỏi có sửa không. Nếu bạn nói "sửa", công việc kết thúc khi các lỗi tìm thấy đã được sửa và việc sửa đã được kiểm tra lại, và khi mọi việc còn dang dở đều đã được ghi rõ sẽ khép lại thế nào. Công việc cũng có thể dừng trước khi xong (ví dụ khi đạt số vòng tối đa, tức "trần số vòng", hoặc khi xuất hiện điều cần bạn quyết định); khi dừng, Claude giải thích lý do và hỏi bạn. Danh sách các trường hợp dừng nằm ở mục 8 của bộ quy tắc.

Thời gian của một vòng chưa được đo; càng nhiều đội thì thời gian và mức sử dụng càng tăng.

## Các đội

| Đội | Agent | Làm gì |
|---|---|---|
| 🔵 Xanh dương | `mavi-yazar` | Viết tác phẩm, đưa mọi phản đối tới một kết luận |
| 🔴 Đỏ | `kirmizi-saldirgan` | Tìm cách phá vỡ các khẳng định của tác phẩm |
| 🩷 Hồng | `pembe-denetci` | Kiểm tra các phát hiện, chốt số đếm |
| 🟣 Tím | `mor-sorgucu` | Kiểm tra sự hiểu biết, đặt câu hỏi khó, truy tìm nguyên nhân |
| 🟢 Xanh lá | `yesil-gercek` | Xác minh thông tin bên ngoài từ nguồn gốc, làm nghiên cứu sơ bộ |
| 🟠 Cam | `turuncu-deneyci` | Tự tay chạy thử, tính lại |
| 🩶 Xám | `gri-sadelestirici` | Hỏi "có thật sự cần không", giữ trọng tâm |
| ⚫ Đen | `siyah-hafiza` | Bắt những gì bị quên và những gì hỏng lại; là cổng chặn |
| ⚪ Trắng | `beyaz-kayitci` | Xác minh việc đã làm, ghi lại việc không ai nhận và dấu vết |
| 🟡 Vàng | `sari-kullanici` | Thử tác phẩm bằng con mắt của người sẽ dùng nó |
| 🩵 Ngọc lam | `turkuaz-verimlilik` | Tìm sự lãng phí token, lượt đọc và lượt gọi, giảm tới mức tối thiểu (được thêm vào cỡ) |

"Tác phẩm" là tệp hay công việc của bạn đang được xem xét. Màn hình Claude chỉ nhận tám màu cho các đội; vì vậy đội Xám hiện màu lục lam, còn Đen và Trắng không có màu. Hãy nhận ra đội qua tên.

## Cỡ và chế độ

**Cỡ** là số đội sẽ làm việc. Nếu bạn không nói, Claude chọn theo độ lớn của công việc và thông báo cho bạn.

| Cỡ | Các đội | Trần số vòng | Dùng cho |
|---|---|---|---|
| Nhanh | Xanh dương, Đỏ, Hồng | 2 | Việc nhỏ, một tệp, kiểm tra nhanh |
| Thường | + Xanh lá, Xám, Cam | 5 | Phần lớn công việc |
| Đầy đủ | + Tím, Vàng, Đen, Trắng | 10 | Việc quan trọng, dùng lâu dài hoặc tốn kém nếu phải làm lại |

Có thể thêm từng đội vào một cỡ ("cỡ nhanh, thêm cả đội vàng"); với bài tập và bài viết Claude tự thêm đội Vàng, với việc cần chạy thử thì thêm đội Cam, và sẽ báo cho bạn. Trần số vòng là giá trị khởi đầu chưa được kiểm thử; muốn đổi chỉ cần nói.

**Chế độ** là điều cần xem xét: **rộng** (toàn bộ công việc) hoặc **tập trung** (một câu hỏi). Nếu bạn hỏi một câu duy nhất, Claude chọn chế độ tập trung.

## Kết quả ở đâu

- Claude kể kết quả cho bạn trong cuộc trò chuyện: trên cùng là một câu, bên dưới là tóm tắt ngắn; điều gì **có bằng chứng** và điều gì là *ước đoán* được nói riêng; nếu có câu hỏi thì nằm ở cuối.
- Trong thư mục bạn đang làm việc sẽ có một thư mục `takim`. Đó là sổ ghi của các đội; bạn không cần đọc. Bản gốc tệp của bạn cũng nằm trong thư mục này (`takim\yedek\`); nếu hài lòng với các chỉnh sửa, bạn có thể xoá nó sau khi xong việc.
- Để đưa ghi chú hay báo cáo cho các đội, bạn có thể đặt tệp vào thư mục `takim\gelen\`.
- Nếu bạn bắt đầu một công việc mới trong cùng thư mục, các ghi chép cũ không bị xoá; chúng được chuyển vào `takim\arsiv\`.

Toàn văn bộ quy tắc: `skills/takim-dongu/sablonlar/kurallar.md`.

## Gỡ cài đặt

- Nếu bạn cài bằng `kur.cmd`: nhấp đúp vào tệp `kaldir.cmd`. Nó chỉ xoá các tệp agent của gói và ba thư mục skill; không động vào các thư mục `takim` trong dự án của bạn. Nếu còn tệp nào không xoá được, nó sẽ báo trên màn hình.
- Nếu bạn cài dưới dạng plugin: trong Claude Code gõ `/plugin` và gỡ plugin trong cửa sổ hiện ra (bước này chưa được xác minh).
- Nếu bạn sao chép vào một dự án: xoá các tệp đã sao chép khỏi thư mục `.claude` của dự án đó.

## Các cách cài đặt khác (nâng cao)

Chỉ dùng một cách. Nếu dùng cả `kur.cmd` và cách plugin, các đội sẽ xuất hiện hai lần trong danh sách.

**Dưới dạng plugin.** Ở chỗ ghi `<takim-ajan klasörünün yolu>` bên dưới, hãy đặt đường dẫn đầy đủ của thư mục này trên máy bạn. Trong Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Lệnh thứ hai không tự hoàn tất cài đặt: nó mở một cửa sổ; tại đó bạn chọn phạm vi người dùng. Chưa xác minh được rằng đường dẫn Windows được đọc đúng trong lệnh này. Khi cài dưới dạng plugin, tên agent và skill sẽ có thêm tiền tố `takim-ajan:`.

**Vào một dự án.** Sao chép nội dung thư mục `agents` vào thư mục `.claude\agents` của dự án, và ba thư mục bên trong `skills` vào thư mục `.claude\skills` của dự án. Ba thư mục skill phải được sao chép cùng nhau.

## Bên trong gói

| Vị trí | Có gì bên trong |
|---|---|
| `agents/` | Các tệp chỉ dẫn của các đội |
| `skills/` | Ba skill: `takim-dongu` (vòng lặp và mẫu), `takim-tek` (một đội), `takim-durum` (trạng thái) |
| `tests/` | Bộ tự kiểm tra của gói (`tests/denetle.ps1`), các kịch bản áp lực và ba lần chạy thử khô |
| `docs/` | `docs/koken.md` (nguồn gốc), `docs/arastirma.md` (các phương pháp làm nền tảng) |
| `kur.cmd`, `kaldir.cmd` | Nhấp đúp để cài / gỡ |

Phiên bản 0.2.4. Những gì chưa được kiểm thử được liệt kê ở cuối `docs/koken.md`.
