.class public Lcom/camerasideas/collagemaker/activity/adapter/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltr;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->a:I

    .line 9
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->b:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->e:I

    .line 3
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->a:I

    .line 4
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->b:I

    .line 5
    iput-object p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->c:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->d:Ljava/lang/String;

    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/activity/adapter/q;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const/4 v3, 0x2

    const/16 v4, 0x16

    invoke-direct {v2, v3, v4}, Lcom/camerasideas/collagemaker/activity/adapter/q;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const v3, 0x7f0e0133

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5
    sget v3, Lxq;->b:I

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v10, v3

    const v6, 0x7f07014e

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v5, v2

    .line 9
    invoke-direct/range {v5 .. v10}, Lcom/camerasideas/collagemaker/activity/adapter/q;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const v12, 0x7f070128

    const/4 v13, 0x1

    const/4 v14, 0x6

    const v3, 0x7f0e0132

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/camerasideas/collagemaker/activity/adapter/q;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const v4, 0x7f070152

    const/4 v9, 0x1

    const/4 v6, 0x7

    const v3, 0x7f0e0136

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    const-string v8, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/camerasideas/collagemaker/activity/adapter/q;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const v11, 0x7f070144

    const/4 v12, 0x1

    const/16 v13, 0xb

    const v3, 0x7f0e0134

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Luq;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/camerasideas/collagemaker/activity/adapter/q;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const v6, 0x7f07016a

    const/16 v8, 0xd

    .line 14
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const v3, 0x7f0e0137

    move-object/from16 v4, p0

    :try_start_1
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 17
    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    .line 18
    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    const-string v10, ""

    move-object v5, v2

    move v7, v9

    move-object v9, v0

    .line 19
    invoke-direct/range {v5 .. v10}, Lcom/camerasideas/collagemaker/activity/adapter/q;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static/range {p0 .. p0}, Lc2;->w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x13

    const-string v6, "Consume Purchases"

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/camerasideas/collagemaker/activity/adapter/q;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->b:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/q;->d:Ljava/lang/String;

    return-void
.end method
