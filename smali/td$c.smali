.class Ltd$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/g;

.field private b:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ltd$c;->a:Lcom/bumptech/glide/load/g;

    .line 2
    iput-object v0, p0, Ltd$c;->b:Lcom/bumptech/glide/load/l;

    .line 3
    iput-object v0, p0, Ltd$c;->c:Lge;

    return-void
.end method

.method b(Ltd$d;Lcom/bumptech/glide/load/i;)V
    .locals 4

    .line 1
    :try_start_0
    check-cast p1, Lwd$c;

    invoke-virtual {p1}, Lwd$c;->a()Laf;

    move-result-object p1

    iget-object v0, p0, Ltd$c;->a:Lcom/bumptech/glide/load/g;

    new-instance v1, Lqd;

    iget-object v2, p0, Ltd$c;->b:Lcom/bumptech/glide/load/l;

    iget-object v3, p0, Ltd$c;->c:Lge;

    invoke-direct {v1, v2, v3, p2}, Lqd;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/i;)V

    .line 2
    invoke-interface {p1, v0, v1}, Laf;->a(Lcom/bumptech/glide/load/g;Laf$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Ltd$c;->c:Lge;

    invoke-virtual {p1}, Lge;->f()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Ltd$c;->c:Lge;

    invoke-virtual {p2}, Lge;->f()V

    .line 4
    throw p1
.end method

.method c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltd$c;->c:Lge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/l;Lge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/l<",
            "TX;>;",
            "Lge<",
            "TX;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ltd$c;->a:Lcom/bumptech/glide/load/g;

    .line 2
    iput-object p2, p0, Ltd$c;->b:Lcom/bumptech/glide/load/l;

    .line 3
    iput-object p3, p0, Ltd$c;->c:Lge;

    return-void
.end method
