.class public final Linshot/collage/adconfig/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjsoft/funnyad/a$c;


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

.field final synthetic b:Lcom/google/ads/ADRequestList;


# direct methods
.method constructor <init>(Linshot/collage/adconfig/k;Lcom/google/ads/ADRequestList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/ADRequestList;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Linshot/collage/adconfig/k$b;->a:Linshot/collage/adconfig/k;

    iput-object p2, p0, Linshot/collage/adconfig/k$b;->b:Lcom/google/ads/ADRequestList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0xea60

    return v0
.end method

.method public b(Lcom/zjsoft/funnyad/a$f;)V
    .locals 1

    const-string v0, "requestListener"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/zjsoft/funnyad/a$f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/k$b;->a:Linshot/collage/adconfig/k;

    invoke-static {v0}, Linshot/collage/adconfig/k;->c(Linshot/collage/adconfig/k;)Landroid/app/Activity;

    move-result-object v0

    .line 2
    iget-object v1, p0, Linshot/collage/adconfig/k$b;->b:Lcom/google/ads/ADRequestList;

    const-string v2, "context"

    .line 3
    invoke-static {v0, v2}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestList"

    invoke-static {v1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v1}, Lcom/zjsoft/funnyad/a$f;->a(Lcom/google/ads/ADRequestList;)V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnc0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/k$b;->a:Linshot/collage/adconfig/k;

    invoke-static {v0}, Linshot/collage/adconfig/k;->a(Linshot/collage/adconfig/k;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
