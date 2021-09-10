.class public final Linshot/collage/adconfig/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linshot/collage/adconfig/k;->h(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Linshot/collage/adconfig/k;


# direct methods
.method constructor <init>(Linshot/collage/adconfig/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Linshot/collage/adconfig/k$a;->a:Linshot/collage/adconfig/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/k$a;->a:Linshot/collage/adconfig/k;

    invoke-static {v0}, Linshot/collage/adconfig/k;->d(Linshot/collage/adconfig/k;)Lcom/zjsoft/funnyad/a;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const v0, 0x7f080052

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Linshot/collage/adconfig/p;->c(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    .line 4
    invoke-static {p1, v2}, Linshot/collage/adconfig/p;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 6
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit16 v1, v1, 0x273

    .line 7
    div-int/lit16 v1, v1, 0x4b0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_0
    iget-object v0, p0, Linshot/collage/adconfig/k$a;->a:Linshot/collage/adconfig/k;

    invoke-static {v0}, Linshot/collage/adconfig/k;->d(Linshot/collage/adconfig/k;)Lcom/zjsoft/funnyad/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/zjsoft/funnyad/a;->f(Landroid/view/View;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p2}, Linshot/collage/adconfig/k;->e(Linshot/collage/adconfig/k;Z)V

    .line 10
    :cond_2
    iget-object p2, p0, Linshot/collage/adconfig/k$a;->a:Linshot/collage/adconfig/k;

    invoke-static {p2}, Linshot/collage/adconfig/k;->b(Linshot/collage/adconfig/k;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "AD"

    const-string v0, "\u60c5\u8da3\u5e7f\u544a\u5c55\u793a\u5931\u8d25"

    .line 11
    invoke-static {p1, p2, v0}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lkb0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "HomeLightHouseAds"

    const-string v0, "onAdLoadFailed"

    .line 1
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "AD"

    const-string v0, "\u60c5\u8da3\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25"

    .line 2
    invoke-static {p1, p2, v0}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Linshot/collage/adconfig/k$a;->a:Linshot/collage/adconfig/k;

    invoke-static {p1}, Linshot/collage/adconfig/k;->c(Linshot/collage/adconfig/k;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
