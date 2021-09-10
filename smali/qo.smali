.class public Lqo;
.super Lyn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyn<",
        "Luo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyn;-><init>()V

    return-void
.end method

.method private s(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "EXTRA_KEY_FILE_PATH"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 p2, 0x0

    .line 4
    invoke-static {p2}, Len;->a(Lwm$d;)Len;

    move-result-object v0

    invoke-virtual {v0, p2}, Len;->h(Lwm$d;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p2, 0x0

    const v0, 0x7f010023

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0e00cf

    .line 7
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageSelectorPresenter"

    return-object v0
.end method

.method public n(Lcom/camerasideas/collagemaker/activity/BaseActivity;IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    const-string v1, "Click_Selector"

    const-string v2, "openGooglePhotos"

    invoke-static {v0, v1, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    const-string v1, "com.google.android.apps.photos"

    invoke-static {v0, v1}, Lc2;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ImageSelectorPresenter"

    const-string p2, "Google Photos not installed!"

    .line 3
    invoke-static {p1, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p2, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e003c

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.PICK"

    .line 7
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.ALLOW_MULTIPLE"

    if-eqz p3, :cond_2

    sub-int/2addr v0, p2

    if-le v0, v3, :cond_2

    .line 8
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string p2, "image/*"

    .line 10
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object p2, p0, Lyn;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 12
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_4

    .line 13
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 14
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Landroid/content/ComponentName;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, p3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 p2, 0xb

    .line 17
    invoke-virtual {p1, v4, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public o(Lcom/camerasideas/collagemaker/activity/BaseActivity;IILandroid/content/Intent;Landroid/net/Uri;Z)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "ImageSelectorPresenter"

    const-string v7, "processActivityResult start"

    .line 1
    invoke-static {v6, v7}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ImageSelector:onActivityResult:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", resultCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lim;->b(Ljava/lang/String;)V

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v3, v7, :cond_0

    .line 3
    invoke-static/range {p5 .. p5}, Lcm;->f(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbm;->d(Ljava/lang/String;)Z

    const-string v0, "processActivityResult failed: resultCode != Activity.RESULT_OK"

    .line 4
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    const v3, 0x7f0e00cf

    const/4 v7, 0x4

    if-nez v4, :cond_1

    if-eq v0, v7, :cond_1

    .line 5
    invoke-static/range {p5 .. p5}, Lcm;->f(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbm;->d(Ljava/lang/String;)Z

    .line 6
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lmr;->d(Ljava/lang/CharSequence;)V

    return v8

    :cond_1
    const-string v9, "photoeditor.cutout.backgrounderaser"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v7, :cond_10

    const/4 v7, 0x5

    if-eq v0, v7, :cond_c

    const/16 v7, 0xb

    if-eq v0, v7, :cond_2

    goto/16 :goto_a

    :cond_2
    if-eq v0, v7, :cond_3

    const-string v0, "processGooglePhotosSelect failed: requestCode != MessageDef.GOOGLE_PHOTOS_REQUEST_CODE"

    .line 8
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const-string v0, "processGooglePhotosSelect failed: data == null"

    .line 9
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->c()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v7, 0x1

    .line 12
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enabledSingleSelect="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v0, v1, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Luo;

    invoke-interface {v0}, Luo;->g()I

    move-result v0

    .line 15
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "return from googlephotos, selected photo size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 17
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v13

    rsub-int/lit8 v0, v0, 0x12

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-gtz v13, :cond_8

    :goto_2
    goto/16 :goto_c

    :cond_8
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_17

    .line 18
    invoke-virtual {v4, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 19
    :try_start_0
    invoke-virtual {v2, v9, v15, v11}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    .line 20
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    invoke-static {v15}, Lcm;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    :goto_4
    if-eqz v15, :cond_b

    .line 22
    invoke-static {v15}, Lrq;->f(Landroid/net/Uri;)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v11}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    if-eqz p6, :cond_9

    .line 24
    invoke-direct {v1, v2, v0}, Lqo;->s(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    .line 25
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->a()I

    move-result v15

    invoke-virtual {v1, v2, v0, v15}, Lyn;->l(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)Z

    goto :goto_5

    .line 26
    :cond_a
    iget-object v15, v1, Lyn;->a:Ljava/lang/Object;

    check-cast v15, Luo;

    invoke-interface {v15, v0}, Luo;->j(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    .line 27
    :goto_5
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_c
    if-eq v0, v7, :cond_d

    const-string v0, "processGeneralSelectPhoto failed: requestCode != MessageDef.SELECT_PHOTO_REQUEST_CODE"

    .line 28
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    if-nez v4, :cond_e

    const-string v0, "processGeneralSelectPhoto failed: data == null"

    .line 29
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 30
    :cond_e
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v0, "processGeneralSelectPhoto failed: uri == null"

    .line 31
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object v0, v10

    goto/16 :goto_b

    .line 32
    :cond_f
    :try_start_1
    invoke-virtual {v2, v9, v4, v11}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v5, v0

    .line 33
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    invoke-static {v4}, Lcm;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_b

    :cond_10
    if-eq v0, v7, :cond_11

    const-string v0, "processTakePhotoResult failed: requestCode != MessageDef.TAKE_PHOTO_REQUEST_CODE"

    .line 35
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_11
    if-nez v5, :cond_12

    const-string v0, "processTakePhotoResult failed: uri == null"

    .line 36
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 37
    :cond_12
    :try_start_2
    invoke-virtual {v2, v9, v5, v11}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Take photo filePath="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lrq;->l()Z

    move-result v0

    if-nez v0, :cond_13

    .line 40
    invoke-static {v2, v5}, Landroidx/core/app/b;->u0(Landroid/app/Activity;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v0

    goto :goto_7

    :cond_13
    move-object v4, v5

    .line 42
    :goto_7
    :try_start_3
    invoke-static {v4}, Lrq;->f(Landroid/net/Uri;)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v11}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    .line 44
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v9

    .line 45
    invoke-static {v4}, Lcm;->f(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 46
    invoke-static {v9, v12}, Lcm;->r(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p6, :cond_14

    .line 47
    invoke-direct {v1, v2, v0}, Lqo;->s(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    goto :goto_8

    .line 48
    :cond_14
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->c()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 49
    invoke-virtual {v1, v2, v0, v11}, Lyn;->l(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)Z

    goto :goto_8

    .line 50
    :cond_15
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->b()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 51
    invoke-virtual {v1, v2, v0, v7}, Lyn;->l(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_16
    :goto_8
    move-object v12, v10

    move-object v10, v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v4, v5

    .line 52
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbm;->d(Ljava/lang/String;)Z

    :goto_a
    move-object v0, v5

    :goto_b
    move-object v5, v0

    :goto_c
    move-object v12, v10

    :cond_17
    :goto_d
    if-eqz v5, :cond_18

    if-eqz p6, :cond_18

    .line 54
    invoke-direct {v1, v2, v10}, Lqo;->s(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    goto :goto_e

    :cond_18
    if-eqz v12, :cond_19

    const/4 v8, 0x1

    :cond_19
    if-eqz v10, :cond_1a

    .line 55
    iget-object v0, v1, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Luo;

    invoke-interface {v0, v10}, Luo;->j(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    goto :goto_e

    :cond_1a
    if-nez v8, :cond_1b

    const-string v0, "postProcessActivityResult failed: uri == null"

    .line 56
    invoke-static {v6, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, v1, Lyn;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lmr;->d(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_e
    return v11
.end method

.method public p(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/camerasideas/collagemaker/activity/adapter/l;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "ImageSelectorPresenter"

    const-string p2, "processCalculateDiff failed: adapter == null || newItems == null"

    .line 1
    invoke-static {p1, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/adapter/l;->z()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sub-int/2addr v1, v2

    if-eqz p2, :cond_3

    if-lez v1, :cond_3

    .line 5
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/l;->A(Ljava/util/List;)V

    .line 6
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->o(I)V

    .line 7
    invoke-virtual {p1, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->k(II)V

    :cond_3
    const/4 p3, 0x1

    if-eqz p2, :cond_4

    if-gez v1, :cond_4

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p3

    .line 9
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/l;->A(Ljava/util/List;)V

    .line 10
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->i(I)V

    .line 11
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->k(II)V

    :cond_4
    if-nez p2, :cond_5

    .line 12
    new-instance v1, Lqo$a;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/adapter/l;->z()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lqo$a;-><init>(Lqo;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, p3}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/k$b;Z)Landroidx/recyclerview/widget/k$c;

    move-result-object v1

    .line 13
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/l;->A(Ljava/util/List;)V

    .line 14
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k$c;->a(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_5
    if-eqz p4, :cond_6

    if-eqz p2, :cond_6

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 16
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Luo;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p3

    invoke-interface {p1, p4}, Luo;->d(I)V

    :cond_6
    if-eqz p2, :cond_7

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 18
    :goto_2
    iget-object p4, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p4, Luo;

    invoke-interface {p4, p1}, Luo;->k(Z)V

    .line 19
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Luo;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-gtz p4, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :cond_9
    :goto_3
    invoke-interface {p1, v0}, Luo;->a(I)V

    return p3
.end method

.method public q(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/camerasideas/collagemaker/activity/adapter/l;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "ImageSelectorPresenter"

    const-string p2, "processDeleteEndDiff failed: adapter == null"

    .line 1
    invoke-static {p1, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/adapter/l;->z()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    sub-int/2addr v2, v3

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    if-lez v2, :cond_3

    .line 5
    invoke-interface {v1, p3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p3

    .line 6
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/l;->A(Ljava/util/List;)V

    if-ltz p3, :cond_3

    .line 7
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->o(I)V

    .line 8
    invoke-virtual {p1, p3, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->k(II)V

    :cond_3
    const/4 p1, 0x1

    if-eqz p2, :cond_4

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4

    .line 10
    iget-object p3, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p3, Luo;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-interface {p3, v1}, Luo;->d(I)V

    :cond_4
    if-eqz p2, :cond_5

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_5

    const/4 p3, 0x1

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    .line 12
    :goto_2
    iget-object v1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v1, Luo;

    invoke-interface {v1, p3}, Luo;->k(Z)V

    .line 13
    iget-object p3, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p3, Luo;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :cond_7
    :goto_3
    invoke-interface {p3, v0}, Luo;->a(I)V

    return p1
.end method

.method public r(Lcom/camerasideas/collagemaker/activity/BaseActivity;Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/camerasideas/collagemaker/activity/BaseActivity;",
            "Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabledMultipleSelect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageSelectorPresenter"

    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    const-string p1, "Single select gallery, return null"

    .line 4
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    if-nez p2, :cond_3

    const-string p2, "processBackDeleteCheckPaths failed: groupView = null"

    .line 5
    invoke-static {v3, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lrq;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Luo;

    invoke-interface {v0, p2}, Luo;->i(Ljava/util/List;)V

    goto :goto_3

    :cond_5
    :goto_1
    const-string p2, "processBackDeleteCheckPaths failed: checkPaths = null"

    .line 10
    invoke-static {v3, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object p2, v1

    :goto_3
    if-eqz p2, :cond_6

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    return-object p2

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back delete check failed: checkPaths:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_7

    const-string p2, "processInstanceRestorePaths failed: savedInstanceState = null"

    .line 13
    invoke-static {v3, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 14
    :cond_7
    invoke-static {p3}, Lcom/camerasideas/collagemaker/appdata/a;->c(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lrq;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-gtz p3, :cond_8

    goto :goto_4

    .line 16
    :cond_8
    iget-object p3, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p3, Luo;

    invoke-interface {p3, p2}, Luo;->i(Ljava/util/List;)V

    goto :goto_6

    :cond_9
    :goto_4
    const-string p2, "processInstanceRestorePaths failed: filePaths == null || filePaths.size() <= 0"

    .line 17
    invoke-static {v3, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object p2, v1

    :goto_6
    if-eqz p2, :cond_a

    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_a

    return-object p2

    .line 19
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Instance restore paths failed: instancePaths:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p1, "processIntentRestorePaths failed: intent = null"

    .line 21
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    const-string p2, "EXTRA_KEY_LIST_PATHS"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c

    const-string p1, "processIntentRestorePaths failed: hasExtraKey = false"

    .line 23
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 24
    :cond_c
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_d

    goto :goto_7

    .line 26
    :cond_d
    iget-object p2, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p2, Luo;

    invoke-interface {p2, p1}, Luo;->i(Ljava/util/List;)V

    goto :goto_9

    :cond_e
    :goto_7
    const-string p1, "processIntentRestorePaths failed: paths == null || paths.size() <= 0"

    .line 27
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object p1, v1

    :goto_9
    if-eqz p1, :cond_f

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    return-object p1

    .line 29
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Intent restore paths failed: intentPaths:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "All restore paths process failed!"

    .line 30
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-object v1
.end method
