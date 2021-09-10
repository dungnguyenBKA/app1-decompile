.class final Lld$b;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lbe<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/g;

.field final b:Z

.field c:Lhe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/g;Lbe;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lbe<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lbe<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    .line 2
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lld$b;->a:Lcom/bumptech/glide/load/g;

    .line 4
    invoke-virtual {p2}, Lbe;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p2}, Lbe;->e()Lhe;

    move-result-object p1

    .line 6
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-object p1, p0, Lld$b;->c:Lhe;

    .line 8
    invoke-virtual {p2}, Lbe;->f()Z

    move-result p1

    iput-boolean p1, p0, Lld$b;->b:Z

    return-void
.end method
