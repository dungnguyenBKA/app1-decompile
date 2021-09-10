.class Lcom/zjsoft/fan/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/fan/e;->d(Landroid/app/Activity;Llb0;Lub0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lub0$a;

.field final synthetic c:Lcom/zjsoft/fan/e;


# direct methods
.method constructor <init>(Lcom/zjsoft/fan/e;Landroid/app/Activity;Lub0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/fan/e$a;->c:Lcom/zjsoft/fan/e;

    iput-object p2, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zjsoft/fan/e$a;->b:Lub0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    const-string v1, "FanNativeCard:onAdClicked"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/e$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 14

    .line 1
    iget-object p1, p0, Lcom/zjsoft/fan/e$a;->c:Lcom/zjsoft/fan/e;

    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v1, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    monitor-exit p1

    goto/16 :goto_5

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcc0;->v(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 6
    monitor-exit p1

    goto/16 :goto_5

    .line 7
    :cond_1
    :try_start_2
    new-instance v1, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v1, v0}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p1, Lcom/zjsoft/fan/e;->g:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f080064

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080054

    .line 11
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080045

    .line 12
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f08005b

    .line 13
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f080050

    .line 14
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v8, 0x8

    .line 15
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v6, 0x7f080052

    .line 17
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 18
    new-instance v7, Lcom/facebook/ads/MediaView;

    invoke-direct {v7, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    iget v10, p1, Lcom/zjsoft/fan/e;->c:F

    iget v11, p1, Lcom/zjsoft/fan/e;->b:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v6, 0x7f08005a

    .line 21
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 22
    new-instance v8, Lcom/facebook/ads/MediaView;

    invoke-direct {v8, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 23
    iget v9, p1, Lcom/zjsoft/fan/e;->d:F

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_2

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v9, v10

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060053

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    :goto_0
    float-to-int v9, v9

    .line 26
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v6, 0x7f08004b

    .line 28
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 29
    new-instance v6, Lcom/facebook/ads/AdOptionsView;

    iget-object v9, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    invoke-direct {v6, v0, v9, v1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 30
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v9, 0x0

    .line 31
    invoke-virtual {v2, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 32
    iget-object v2, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v2, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v2, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->hasCallToAction()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 35
    iget-object v2, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v2, p1, Lcom/zjsoft/fan/e;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 37
    iget-object v2, p1, Lcom/zjsoft/fan/e;->h:Ljava/lang/String;

    const-string v6, "title"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 38
    iget-object v6, p1, Lcom/zjsoft/fan/e;->h:Ljava/lang/String;

    const-string v10, "des"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 39
    iget-object v10, p1, Lcom/zjsoft/fan/e;->h:Ljava/lang/String;

    const-string v11, "button"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 40
    iget-object v11, p1, Lcom/zjsoft/fan/e;->h:Ljava/lang/String;

    const-string v12, "cover"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 41
    iget-object v12, p1, Lcom/zjsoft/fan/e;->h:Ljava/lang/String;

    const-string v13, "icon"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x1

    :cond_5
    const/4 v12, 0x1

    .line 42
    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_6

    .line 43
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v6, :cond_7

    .line 44
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v10, :cond_8

    .line 45
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v11, :cond_9

    .line 46
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 47
    :cond_9
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :goto_3
    if-eqz v12, :cond_a

    .line 48
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 49
    :cond_a
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 50
    :goto_4
    iget-object v2, p1, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2, v1, v7, v8, v13}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    monitor-exit p1

    move-object v2, v1

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 52
    :try_start_3
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    monitor-exit p1

    const/4 v2, 0x0

    .line 54
    :goto_5
    iget-object p1, p0, Lcom/zjsoft/fan/e$a;->b:Lub0$a;

    if-eqz p1, :cond_c

    if-eqz v2, :cond_b

    .line 55
    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    invoke-interface {p1, v0, v2}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 56
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    const-string v1, "FanNativeCard:onAdLoaded"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    const-string v1, "FanNativeCard:getAdView failed"

    invoke-static {v1, p1, v0}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    :cond_c
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    .line 58
    monitor-exit p1

    throw v0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    const-string v1, "FanNativeCard:onError errorCode:"

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/e$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    new-instance v1, Lkb0;

    const-string v2, "FanNativeCard:onError, errorCode: "

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

    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    const-string v1, "FanNativeCard:onLoggingImpression"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/e$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/e$a;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
