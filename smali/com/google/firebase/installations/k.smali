.class Lcom/google/firebase/installations/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/installations/n;


# instance fields
.field final a:Llw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llw<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/installations/k;->a:Llw;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Li50;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Li50;->f()Lh50$a;

    move-result-object v0

    sget-object v1, Lh50$a;->d:Lh50$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Li50;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Li50;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    .line 4
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/firebase/installations/k;->a:Llw;

    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Llw;->e(Ljava/lang/Object;)Z

    return v3
.end method
