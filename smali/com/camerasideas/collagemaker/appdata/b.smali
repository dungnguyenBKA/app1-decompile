.class public Lcom/camerasideas/collagemaker/appdata/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:[Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 60

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lx1;->d(Landroid/os/LocaleList;)Lx1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    .line 4
    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v1, v0, v3

    invoke-static {v0}, Lx1;->a([Ljava/util/Locale;)Lx1;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lx1;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Lx1;->b(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "CN"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "IR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "https://inshot.cc/"

    goto :goto_3

    :cond_4
    :goto_2
    const-string v0, "StoreUrl"

    const-string v1, "CN || IR"

    .line 9
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "https://inshotapp.com/"

    .line 10
    :goto_3
    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->a:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Background Eraser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->b:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->c:Ljava/lang/String;

    const-string v1, "#ffffff"

    const-string v2, "#bbbbbb"

    const-string v3, "#4e4e4e"

    const-string v4, "#212121"

    const-string v5, "#000000"

    const-string v6, "#ffd7cd"

    const-string v7, "#f9ab9d"

    const-string v8, "#ec5c60"

    const-string v9, "#cb3243"

    const-string v10, "#cd181f"

    const-string v11, "#ff0000"

    const-string v12, "#fff2ca"

    const-string v13, "#fde472"

    const-string v14, "#f3af59"

    const-string v15, "#fc7f3d"

    const-string v16, "#ed3f0f"

    const-string v17, "#fff1f1"

    const-string v18, "#ffe1e4"

    const-string v19, "#ffa4b9"

    const-string v20, "#ff679f"

    const-string v21, "#fb2c78"

    const-string v22, "#e7d5e7"

    const-string v23, "#d3a6d8"

    const-string v24, "#ba66af"

    const-string v25, "#a53b8e"

    const-string v26, "#65218c"

    const-string v27, "#99d2f9"

    const-string v28, "#81adea"

    const-string v29, "#2961a9"

    const-string v30, "#0e2e89"

    const-string v31, "#171982"

    const-string v32, "#a5e7f6"

    const-string v33, "#7ce3ff"

    const-string v34, "#00b0d0"

    const-string v35, "#058bc0"

    const-string v36, "#08447e"

    const-string v37, "#deeee9"

    const-string v38, "#b3d0c5"

    const-string v39, "#4daf9d"

    const-string v40, "#21887c"

    const-string v41, "#0f664e"

    const-string v42, "#d3e5a6"

    const-string v43, "#aace87"

    const-string v44, "#a3af38"

    const-string v45, "#6d822b"

    const-string v46, "#366131"

    const-string v47, "#e4d9c0"

    const-string v48, "#d6c392"

    const-string v49, "#a3815a"

    const-string v50, "#72462f"

    const-string v51, "#3e3129"

    .line 13
    filled-new-array/range {v1 .. v51}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->d:[Ljava/lang/String;

    const-string v1, "#a7a7a7"

    const-string v2, "#995452"

    const-string v3, "#e1d6d7"

    const-string v4, "#ccbfd4"

    const-string v5, "#A67C80"

    const-string v6, "#D4D3CF"

    const-string v7, "#7A7185"

    const-string v8, "#6E5055"

    const-string v9, "#666563"

    const-string v10, "#F0E4FB"

    const-string v11, "#EED0D5"

    const-string v12, "#E1CCD1"

    const-string v13, "#C3C9DF"

    const-string v14, "#929493"

    const-string v15, "#807D5C"

    const-string v16, "#E2E4E1"

    const-string v17, "#8596A4"

    const-string v18, "#ECECEC"

    const-string v19, "#96A48C"

    const-string v20, "#AFB0B2"

    const-string v21, "#BEC0BF"

    const-string v22, "#B7C5B3"

    const-string v23, "#A0A7BA"

    const-string v24, "#FFFAF7"

    const-string v25, "#7D8970"

    .line 14
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->e:Ljava/util/List;

    const-string v1, "#FF7063"

    const-string v2, "#FF3274"

    const-string v3, "#3EA2D7"

    const-string v4, "#FFA258"

    const-string v5, "#F22D52"

    const-string v6, "#F2A0B6"

    const-string v7, "#7285F2"

    const-string v8, "#3ADB7C"

    const-string v9, "#F2C4CD"

    const-string v10, "#129AEF"

    const-string v11, "#0278A6"

    const-string v12, "#0D8C39"

    const-string v13, "#5639A5"

    const-string v14, "#A482F4"

    const-string v15, "#4AE3D2"

    const-string v16, "#F4C131"

    const-string v17, "#F6490D"

    const-string v18, "#1DCED8"

    const-string v19, "#00D28E"

    const-string v20, "#FA4848"

    const-string v21, "#434882"

    const-string v22, "#730068"

    const-string v23, "#729D38"

    const-string v24, "#C6E377"

    const-string v25, "#022D3C"

    const-string v26, "#900C3F"

    const-string v27, "#FF5733"

    const-string v28, "#FFC300"

    .line 15
    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    const-string v1, "#FFFFFF"

    const-string v2, "#000000"

    const-string v3, "#54FF84"

    const-string v4, "#D10123"

    const-string v5, "#416AE0"

    const-string v6, "#7669FF"

    const-string v7, "#FCEB0C"

    const-string v8, "#FF674B"

    const-string v9, "#7FFEF5"

    const-string v10, "#FECCEB"

    const-string v11, "#FFAF7A"

    const-string v12, "#8BE2FD"

    const-string v13, "#94E39F"

    const-string v14, "#FFCF49"

    const-string v15, "#8BA6D6"

    const-string v16, "#B7B2CF"

    const-string v17, "#BEE1E8"

    const-string v18, "#C4D8A7"

    const-string v19, "#E0EAF5"

    const-string v20, "#F3E9D4"

    .line 16
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->g:[Ljava/lang/String;

    const-string v1, "#FFD7CD"

    const-string v2, "#F9AB9D"

    const-string v3, "#FF7978"

    const-string v4, "#EC5C60"

    const-string v5, "#FF0000"

    const-string v6, "#CB3243"

    const-string v7, "#CD181F"

    const-string v8, "#FE9F78"

    const-string v9, "#FC7F3D"

    const-string v10, "#FE7448"

    const-string v11, "#FD6202"

    const-string v12, "#E46A02"

    const-string v13, "#E15500"

    const-string v14, "#ED3F0F"

    const-string v15, "#FFA4B9"

    const-string v16, "#FF679F"

    const-string v17, "#FF479B"

    const-string v18, "#FD0292"

    const-string v19, "#FB2C78"

    const-string v20, "#EB065F"

    const-string v21, "#CC1361"

    const-string v22, "#FFF2CA"

    const-string v23, "#FDE472"

    const-string v24, "#F7D351"

    const-string v25, "#FEEC01"

    const-string v26, "#FFD218"

    const-string v27, "#EAD924"

    const-string v28, "#F3AF59"

    const-string v29, "#E3FED9"

    const-string v30, "#BFFFA3"

    const-string v31, "#ACE77E"

    const-string v32, "#8AFF6B"

    const-string v33, "#2AFE04"

    const-string v34, "#93FF1A"

    const-string v35, "#3DC648"

    const-string v36, "#A5E7F6"

    const-string v37, "#7CE3FF"

    const-string v38, "#62F7FB"

    const-string v39, "#2EE5FE"

    const-string v40, "#21FDE6"

    const-string v41, "#00B0D0"

    const-string v42, "#058BC0"

    const-string v43, "#99D2F9"

    const-string v44, "#6BA4F8"

    const-string v45, "#81ADEA"

    const-string v46, "#7388FE"

    const-string v47, "#3863FB"

    const-string v48, "#422FF9"

    const-string v49, "#011EFE"

    const-string v50, "#2961A9"

    const-string v51, "#0E2E89"

    const-string v52, "#171982"

    const-string v53, "#08447E"

    const-string v54, "#9D70F6"

    const-string v55, "#B773FF"

    const-string v56, "#8802F8"

    const-string v57, "#9D1DF9"

    const-string v58, "#CE16FE"

    const-string v59, "#EA5CDE"

    .line 17
    filled-new-array/range {v1 .. v59}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->h:[Ljava/lang/String;

    const-string v1, "#FDE3ED"

    const-string v2, "#E6D2D6"

    const-string v3, "#E4C4D0"

    const-string v4, "#FECBE0"

    const-string v5, "#FEA3C3"

    const-string v6, "#FFF1F1"

    const-string v7, "#FFE1E4"

    const-string v8, "#E4C6C4"

    const-string v9, "#F4B8B4"

    const-string v10, "#FDA7A1"

    const-string v11, "#FFE8D9"

    const-string v12, "#F9EAD1"

    const-string v13, "#DEB79E"

    const-string v14, "#EBAD93"

    const-string v15, "#FECCA5"

    const-string v16, "#FEFDE4"

    const-string v17, "#DFDCC7"

    const-string v18, "#E5E1A5"

    const-string v19, "#E9DA84"

    const-string v20, "#F9FFA4"

    const-string v21, "#D3E5A6"

    const-string v22, "#C9D4C1"

    const-string v23, "#A7CBAF"

    const-string v24, "#93D19F"

    const-string v25, "#AACE87"

    const-string v26, "#DEEEE9"

    const-string v27, "#B3D0C5"

    const-string v28, "#AAD1D0"

    const-string v29, "#81DAD7"

    const-string v30, "#AAF8FF"

    const-string v31, "#E6E8FF"

    const-string v32, "#C0C4D4"

    const-string v33, "#B1BFD5"

    const-string v34, "#99AEE2"

    const-string v35, "#A9D5FE"

    const-string v36, "#F3E3FE"

    const-string v37, "#E7D5E7"

    const-string v38, "#D3A6D8"

    const-string v39, "#B39CCA"

    const-string v40, "#CDAAFE"

    .line 18
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->i:[Ljava/lang/String;

    const-string v1, "#BC605F"

    const-string v2, "#A43E3D"

    const-string v3, "#7F2C2B"

    const-string v4, "#692F2D"

    const-string v5, "#690D0A"

    const-string v6, "#E4D9C0"

    const-string v7, "#D6C392"

    const-string v8, "#A3815A"

    const-string v9, "#A36142"

    const-string v10, "#72462F"

    const-string v11, "#A3AF38"

    const-string v12, "#D0C02A"

    const-string v13, "#9D9238"

    const-string v14, "#938124"

    const-string v15, "#635124"

    const-string v16, "#61B255"

    const-string v17, "#548F34"

    const-string v18, "#6D822B"

    const-string v19, "#366131"

    const-string v20, "#0F664E"

    const-string v21, "#4DAF9D"

    const-string v22, "#379089"

    const-string v23, "#21887C"

    const-string v24, "#306776"

    const-string v25, "#225253"

    const-string v26, "#4962AB"

    const-string v27, "#2C588A"

    const-string v28, "#3C4F76"

    const-string v29, "#0B1864"

    const-string v30, "#000C49"

    const-string v31, "#BA66AF"

    const-string v32, "#A53B8E"

    const-string v33, "#905EB3"

    const-string v34, "#65218C"

    const-string v35, "#36005B"

    const-string v36, "#BBBBBB"

    const-string v37, "#4E4E4E"

    const-string v38, "#212121"

    .line 19
    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->j:[Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/camerasideas/collagemaker/appdata/b;->a:Ljava/lang/String;

    const-string v2, "website/collage/policy.html"

    invoke-static {v0, v1, v2}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->k:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/camerasideas/collagemaker/appdata/b;->a:Ljava/lang/String;

    const-string v2, "website/collage/policy_ja.html"

    invoke-static {v0, v1, v2}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->l:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/camerasideas/collagemaker/appdata/b;->a:Ljava/lang/String;

    const-string v2, "website/collage/policy_ko.html"

    invoke-static {v0, v1, v2}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->m:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/camerasideas/collagemaker/appdata/b;->a:Ljava/lang/String;

    const-string v2, "website/collage/privacypolicy_eu.html"

    invoke-static {v0, v1, v2}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->n:Ljava/lang/String;

    const-string v1, "image/png"

    const-string v2, "image/jpg"

    const-string v3, "image/jpeg"

    const-string v4, "image/webp"

    const-string v5, "image/x-ms-bmp"

    const-string v6, "image/gif"

    const-string v7, "image/ico"

    const-string v8, "image/vnd.wap.wbmp"

    const-string v9, "image/heif"

    const-string v10, "image/heic"

    const-string v11, "image/x-icon"

    const-string v12, "image/x-samsung-srw"

    const-string v13, "image/x-sony-arw"

    const-string v14, "image/x-pentax-pef"

    const-string v15, "image/x-nikon-nrw"

    const-string v16, "image/x-fuji-raf"

    const-string v17, "image/x-nikon-nef"

    const-string v18, "image/x-adobe-dng"

    const-string v19, "image/x-canon-cr2"

    const-string v20, "image/x-panasonic-rw2"

    .line 24
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/b;->o:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/camerasideas/collagemaker/appdata/b;->a:Ljava/lang/String;

    return-void
.end method
