.class public Lcom/zjsoft/zjad/b;
.super Lvb0;
.source "SourceFile"


# instance fields
.field b:Ljb0;

.field c:I

.field d:I

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/widget/ImageView;

.field g:Lub0$a;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvb0;-><init>()V

    const v0, 0x7f0b0027

    .line 2
    iput v0, p0, Lcom/zjsoft/zjad/b;->c:I

    const v0, 0x7f0b0028

    .line 3
    iput v0, p0, Lcom/zjsoft/zjad/b;->d:I

    return-void
.end method

.method private l(Landroid/content/Context;Ljava/lang/String;)Lcom/zjsoft/zjad/d;
    .locals 7

    const-string v0, ""

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 4
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "package"

    .line 5
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {p1, v4}, Lcom/zjsoft/zjad/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 7
    invoke-static {p1, v4, v5}, Lcc0;->w(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    invoke-static {p1, v4, v5}, Lcc0;->u(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x9

    if-le v5, v6, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v5, Lcom/zjsoft/zjad/d;

    invoke-direct {v5}, Lcom/zjsoft/zjad/d;-><init>()V

    .line 10
    iput-object v4, v5, Lcom/zjsoft/zjad/d;->f:Ljava/lang/String;

    const-string v4, "market_url"

    .line 11
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/zjsoft/zjad/d;->e:Ljava/lang/String;

    const-string v4, "app_name"

    .line 12
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/zjsoft/zjad/d;->c:Ljava/lang/String;

    const-string v4, "app_des"

    .line 13
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/zjsoft/zjad/d;->d:Ljava/lang/String;

    const-string v4, "app_icon"

    .line 14
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/zjsoft/zjad/d;->a:Ljava/lang/String;

    const-string v4, "action"

    .line 15
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/zjsoft/zjad/d;->g:Ljava/lang/String;

    const-string v4, "app_cover"

    .line 16
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/zjsoft/zjad/d;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 19
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 20
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjsoft/zjad/d;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized m(Landroid/app/Activity;Lcom/zjsoft/zjad/d;)Landroid/view/View;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/zjsoft/zjad/b;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080064

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080054

    .line 3
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080045

    .line 4
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f08005b

    .line 5
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/zjsoft/zjad/b;->f:Landroid/widget/ImageView;

    .line 6
    iget-object v5, p2, Lcom/zjsoft/zjad/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p2, Lcom/zjsoft/zjad/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, p2, Lcom/zjsoft/zjad/d;->g:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 10
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/zjsoft/zjad/b$a;

    invoke-direct {v3, p0, p2, p1}, Lcom/zjsoft/zjad/b$a;-><init>(Lcom/zjsoft/zjad/b;Lcom/zjsoft/zjad/d;Landroid/app/Activity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/zjsoft/zjad/b;->d:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080062

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15
    new-instance v2, Lcom/zjsoft/zjad/b$b;

    invoke-direct {v2, p0, p2, p1}, Lcom/zjsoft/zjad/b$b;-><init>(Lcom/zjsoft/zjad/b;Lcom/zjsoft/zjad/d;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p2, Lcom/zjsoft/zjad/d;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcc0;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 17
    :try_start_1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lub0;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/zjsoft/zjad/b;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/zjsoft/zjad/b;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/zjsoft/zjad/b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "ZJAdBanner@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/zjad/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lub0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/app/Activity;Llb0;Lub0$a;)V
    .locals 3

    const-string v0, "ZJAdBanner: no selfAd return"

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    const-string v2, "ZJAdBanner:load"

    invoke-virtual {v1, p1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/zjad/b;->b:Ljb0;

    .line 4
    iput-object p3, p0, Lcom/zjsoft/zjad/b;->g:Lub0$a;

    .line 5
    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/zjsoft/zjad/b;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "layout_id"

    const v2, 0x7f0b0027

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zjsoft/zjad/b;->c:I

    .line 7
    iget-object p2, p0, Lcom/zjsoft/zjad/b;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "root_layout_id"

    const v2, 0x7f0b0028

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zjsoft/zjad/b;->d:I

    .line 8
    :cond_1
    invoke-static {p1}, Lcc0;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zjsoft/zjad/b;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/zjsoft/zjad/d;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 9
    iget-object v0, p2, Lcom/zjsoft/zjad/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/zjsoft/zjad/b;->h:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/zjsoft/zjad/b;->m(Landroid/app/Activity;Lcom/zjsoft/zjad/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p3, p1, v0}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    new-instance v0, Lkb0;

    const-string v1, "ZJAdBanner: load business ads"

    invoke-direct {v0, v1}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, v0}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 13
    :cond_2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZJAdBanner: get selfAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/zjsoft/zjad/d;->f:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    new-instance p2, Lkb0;

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 16
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    const-string p2, "ZJAdBanner:Please check params is right."

    .line 17
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ZJAdBanner:Please check MediationListener is right."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
