.class public final Linshot/collage/adconfig/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjsoft/funnyad/a$e;


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
    iput-object p1, p0, Linshot/collage/adconfig/k$c;->a:Linshot/collage/adconfig/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/k$c;->a:Linshot/collage/adconfig/k;

    invoke-static {v0}, Linshot/collage/adconfig/k;->c(Linshot/collage/adconfig/k;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5173\u95ed\u60c5\u8da3\u5e7f\u544a\uff1a"

    .line 2
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Linshot/collage/adconfig/k$c;->a:Linshot/collage/adconfig/k;

    invoke-static {v2}, Linshot/collage/adconfig/k;->b(Linshot/collage/adconfig/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u5df2\u5c55\u793a"

    goto :goto_0

    :cond_0
    const-string v2, "\u672a\u5c55\u793a"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AD"

    .line 3
    invoke-static {v0, v2, v1}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Linshot/collage/adconfig/k$c;->a:Linshot/collage/adconfig/k;

    invoke-static {v0}, Linshot/collage/adconfig/k;->c(Linshot/collage/adconfig/k;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/k$c;->a:Linshot/collage/adconfig/k;

    invoke-static {v0}, Linshot/collage/adconfig/k;->c(Linshot/collage/adconfig/k;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "AD"

    const-string v2, "\u60c5\u8da3\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6"

    invoke-static {v0, v1, v2}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Linshot/collage/adconfig/k$c;->a:Linshot/collage/adconfig/k;

    invoke-static {v0}, Linshot/collage/adconfig/k;->c(Linshot/collage/adconfig/k;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
