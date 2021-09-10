.class Lcom/zjsoft/admob/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/zjsoft/admob/k;


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/k;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/admob/n;->b:Lcom/zjsoft/admob/k;

    iput-object p2, p0, Lcom/zjsoft/admob/n;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/zjsoft/admob/n;->b:Lcom/zjsoft/admob/k;

    iput-object p1, v0, Lcom/zjsoft/admob/k;->f:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/admob/n;->a:Landroid/app/Activity;

    const-string v1, "AdmobNativeCard:onNativeAdLoaded"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/zjsoft/admob/n;->b:Lcom/zjsoft/admob/k;

    iget-object v0, p0, Lcom/zjsoft/admob/n;->a:Landroid/app/Activity;

    iget v1, p1, Lcom/zjsoft/admob/k;->h:I

    iget-object v2, p1, Lcom/zjsoft/admob/k;->f:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 4
    monitor-enter p1

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_a

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcc0;->v(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .line 7
    monitor-exit p1

    goto/16 :goto_5

    :cond_0
    const v4, 0x3ff49603

    .line 8
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 10
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/ads/nativead/NativeAd$Image;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    const/high16 v7, 0x3fa00000    # 1.25f

    if-eqz v5, :cond_4

    .line 11
    :try_start_2
    invoke-virtual {v5}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v8, v4

    cmpg-float v8, v4, v7

    if-gez v8, :cond_3

    .line 13
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v5

    const-string v8, "AdmobNativeCard:onAdFailedToLoad bitmap weight/height  < 1.25f, load next."

    invoke-virtual {v5, v0, v8}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    iget-object v5, p1, Lcom/zjsoft/admob/k;->i:Lub0$a;

    if-eqz v5, :cond_2

    .line 15
    new-instance v8, Lkb0;

    const-string v9, "AdmobNativeCard:onAdFailedToLoad bitmap weight/height  > 1.25f, load next."

    invoke-direct {v8, v9}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0, v8}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    :cond_2
    monitor-exit p1

    goto/16 :goto_5

    .line 17
    :cond_3
    :try_start_3
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AdmobNativeCard cover "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " # "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 18
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 19
    :try_start_5
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/ads/MediaContent;->hasVideoContent()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/ads/MediaContent;->getAspectRatio()F

    move-result v8

    .line 21
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UnifiedNativeAd is video "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmpl-float v9, v8, v5

    if-eqz v9, :cond_5

    cmpg-float v7, v8, v7

    if-gez v7, :cond_5

    .line 22
    monitor-exit p1

    goto/16 :goto_5

    :cond_5
    cmpl-float v7, v8, v5

    if-eqz v7, :cond_6

    move v4, v8

    :cond_6
    const/4 v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 23
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    const/4 v7, 0x0

    .line 24
    :goto_2
    new-instance v8, Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/ads/nativead/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v9, 0x7f080064

    .line 26
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    const v9, 0x7f080054

    .line 27
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    const v9, 0x7f080045

    .line 28
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    const v9, 0x7f08005b

    .line 29
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    const v9, 0x7f080050

    .line 30
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/16 v10, 0x8

    .line 31
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const v9, 0x7f080052

    .line 32
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 33
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    new-instance v6, Lcom/zjsoft/admob/o;

    invoke-direct {v6, p1, v0, v4}, Lcom/zjsoft/admob/o;-><init>(Lcom/zjsoft/admob/k;Landroid/content/Context;F)V

    .line 35
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v9, -0x1

    if-eqz v7, :cond_8

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_8

    .line 36
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p1, Lcom/zjsoft/admob/k;->p:F

    div-float/2addr v7, v4

    float-to-int v4, v7

    invoke-direct {v5, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 37
    :cond_8
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    new-instance v1, Lcom/zjsoft/admob/p;

    invoke-direct {v1, p1}, Lcom/zjsoft/admob/p;-><init>(Lcom/zjsoft/admob/k;)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 40
    invoke-virtual {v8, v6}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V

    .line 42
    invoke-virtual {v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getBodyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 46
    invoke-virtual {v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getIconView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 47
    :cond_9
    invoke-virtual {v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getIconView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :goto_4
    invoke-virtual {v8, v2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 49
    monitor-exit p1

    move-object v3, v8

    goto :goto_5

    :catchall_1
    move-exception v1

    .line 50
    :try_start_7
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 51
    :cond_a
    monitor-exit p1

    :goto_5
    if-eqz v3, :cond_b

    .line 52
    iget-object p1, p0, Lcom/zjsoft/admob/n;->b:Lcom/zjsoft/admob/k;

    iget-object p1, p1, Lcom/zjsoft/admob/k;->i:Lub0$a;

    if-eqz p1, :cond_c

    .line 53
    iget-object v0, p0, Lcom/zjsoft/admob/n;->a:Landroid/app/Activity;

    invoke-interface {p1, v0, v3}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_6

    .line 54
    :cond_b
    iget-object p1, p0, Lcom/zjsoft/admob/n;->b:Lcom/zjsoft/admob/k;

    iget-object p1, p1, Lcom/zjsoft/admob/k;->i:Lub0$a;

    if-eqz p1, :cond_c

    .line 55
    iget-object v0, p0, Lcom/zjsoft/admob/n;->a:Landroid/app/Activity;

    const-string v1, "AdmobNativeCard:getAdView return null"

    invoke-static {v1, p1, v0}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    :cond_c
    :goto_6
    return-void

    :catchall_2
    move-exception v0

    .line 56
    monitor-exit p1

    throw v0
.end method
