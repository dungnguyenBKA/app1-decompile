.class Lcom/zjsoft/fan/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/fan/d;->d(Landroid/app/Activity;Llb0;Lub0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lub0$a;

.field final synthetic c:Lcom/zjsoft/fan/d;


# direct methods
.method constructor <init>(Lcom/zjsoft/fan/d;Landroid/app/Activity;Lub0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/fan/d$a;->c:Lcom/zjsoft/fan/d;

    iput-object p2, p0, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zjsoft/fan/d$a;->b:Lub0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    const-string v1, "FanNativeBanner:onAdClicked"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/d$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/zjsoft/fan/d$a;->c:Lcom/zjsoft/fan/d;

    iget-object v9, v1, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    .line 2
    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v0, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4
    monitor-exit v2

    goto/16 :goto_4

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcc0;->v(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    .line 6
    monitor-exit v2

    goto/16 :goto_4

    .line 7
    :cond_1
    :try_start_2
    new-instance v0, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, v9}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, v2, Lcom/zjsoft/fan/d;->f:I

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 9
    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->addView(Landroid/view/View;)V

    .line 10
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, v2, Lcom/zjsoft/fan/d;->e:I

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v3, 0x7f080064

    .line 11
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    const v3, 0x7f080054

    .line 12
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    const v3, 0x7f080045

    .line 13
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    const v3, 0x7f08005b

    .line 14
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x8

    .line 15
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v3, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v3, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v3, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->hasCallToAction()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {v14, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    iget-object v3, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f08005a

    .line 20
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 21
    new-instance v15, Lcom/facebook/ads/MediaView;

    invoke-direct {v15, v9}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 22
    iget v4, v2, Lcom/zjsoft/fan/d;->b:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 23
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v5

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    :goto_0
    float-to-int v4, v4

    .line 25
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v5}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f08004b

    .line 27
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/LinearLayout;

    .line 28
    new-instance v7, Lcom/facebook/ads/AdOptionsView;

    iget-object v5, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;

    sget-object v16, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    const/16 v17, 0x10

    const/4 v6, 0x0

    move-object v3, v7

    move-object v4, v9

    move-object v6, v0

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 p1, v8

    move/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;I)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v3, p1

    .line 30
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    iget-object v1, v2, Lcom/zjsoft/fan/d;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 32
    iget-object v1, v2, Lcom/zjsoft/fan/d;->g:Ljava/lang/String;

    const-string v4, "title"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 33
    iget-object v4, v2, Lcom/zjsoft/fan/d;->g:Ljava/lang/String;

    const-string v5, "des"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 34
    iget-object v5, v2, Lcom/zjsoft/fan/d;->g:Ljava/lang/String;

    const-string v6, "button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v3, v5

    .line 35
    iget-object v5, v2, Lcom/zjsoft/fan/d;->g:Ljava/lang/String;

    const-string v6, "icon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    :goto_1
    move/from16 v18, v3

    move v3, v1

    move/from16 v1, v18

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    const/4 v4, 0x1

    const/4 v1, 0x1

    .line 36
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_6

    .line 37
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v4, :cond_7

    .line 38
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v1, :cond_8

    .line 39
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v5, :cond_9

    .line 40
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 42
    :goto_3
    iget-object v1, v2, Lcom/zjsoft/fan/d;->d:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v1, v0, v15, v6}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    const v1, 0x7f080062

    .line 43
    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    monitor-exit v2

    move-object/from16 v1, p0

    move-object v3, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 46
    :try_start_3
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    monitor-exit v2

    const/4 v3, 0x0

    move-object/from16 v1, p0

    .line 48
    :goto_4
    iget-object v0, v1, Lcom/zjsoft/fan/d$a;->b:Lub0$a;

    if-eqz v0, :cond_b

    if-eqz v3, :cond_a

    .line 49
    iget-object v2, v1, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    invoke-interface {v0, v2, v3}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 50
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v2, v1, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    const-string v3, "FanNativeBanner:onAdLoaded"

    invoke-virtual {v0, v2, v3}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 51
    :cond_a
    iget-object v2, v1, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    const-string v3, "FanNativeBanner:getAdView failed"

    invoke-static {v3, v0, v2}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    :cond_b
    :goto_5
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 52
    :goto_6
    monitor-exit v2

    throw v0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    const-string v1, "FanNativeBanner:onError errorCode:"

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/d$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    new-instance v1, Lkb0;

    const-string v2, "FanNativeBanner:onError, errorCode: "

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    const-string v1, "FanNativeBanner:onLoggingImpression"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/d$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/d$a;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
