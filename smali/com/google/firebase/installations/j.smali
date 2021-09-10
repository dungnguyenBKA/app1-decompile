.class Lcom/google/firebase/installations/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/installations/n;


# instance fields
.field private final a:Lcom/google/firebase/installations/o;

.field private final b:Llw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llw<",
            "Lcom/google/firebase/installations/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/o;Llw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/installations/o;",
            "Llw<",
            "Lcom/google/firebase/installations/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/installations/j;->a:Lcom/google/firebase/installations/o;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/installations/j;->b:Llw;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/j;->b:Llw;

    invoke-virtual {v0, p1}, Llw;->d(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(Li50;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Li50;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/j;->a:Lcom/google/firebase/installations/o;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/o;->d(Li50;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/firebase/installations/j;->b:Llw;

    .line 4
    new-instance v1, Lcom/google/firebase/installations/a$b;

    invoke-direct {v1}, Lcom/google/firebase/installations/a$b;-><init>()V

    .line 5
    invoke-virtual {p1}, Li50;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/a$b;->d(Ljava/lang/String;)Lcom/google/firebase/installations/l$a;

    .line 6
    invoke-virtual {p1}, Li50;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/l$a;->c(J)Lcom/google/firebase/installations/l$a;

    .line 7
    invoke-virtual {p1}, Li50;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/l$a;->b(J)Lcom/google/firebase/installations/l$a;

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/installations/l$a;->a()Lcom/google/firebase/installations/l;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Llw;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
