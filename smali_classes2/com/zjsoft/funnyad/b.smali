.class Lcom/zjsoft/funnyad/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjsoft/funnyad/a$f;


# instance fields
.field final synthetic a:Lcom/zjsoft/funnyad/a;


# direct methods
.method constructor <init>(Lcom/zjsoft/funnyad/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/funnyad/b;->a:Lcom/zjsoft/funnyad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/ADRequestList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zjsoft/funnyad/b;->a:Lcom/zjsoft/funnyad/a;

    new-instance v1, Lpb0;

    iget-object v2, v0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lpb0;-><init>(Landroid/app/Activity;Lcom/google/ads/ADRequestList;Z)V

    iput-object v1, v0, Lcom/zjsoft/funnyad/a;->f:Lpb0;

    return-void
.end method
