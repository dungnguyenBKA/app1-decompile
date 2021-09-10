.class Lcom/camerasideas/collagemaker/activity/CollageMakerApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linshot/collage/adconfig/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    const-string v0, ","

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/camerasideas/collagemaker/appdata/f;->f(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 2
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "showWelcomeSubCount"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcc0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 6
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-eq v2, v0, :cond_3

    const/4 v0, 0x4

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 7
    :goto_2
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->a()Landroid/content/Context;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "EnableShowWelcomeSub"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Luq;->b(Landroid/content/Context;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
