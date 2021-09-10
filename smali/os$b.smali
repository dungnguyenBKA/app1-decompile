.class final Los$b;
.super Lus$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Los;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Lss;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lts;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lxs;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lus$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lus;
    .locals 13

    .line 1
    iget-object v0, p0, Los$b;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, " requestTimeMs"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Los$b;->b:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " requestUptimeMs"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Los;

    iget-object v1, p0, Los$b;->a:Ljava/lang/Long;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Los$b;->b:Ljava/lang/Long;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Los$b;->c:Lss;

    iget-object v8, p0, Los$b;->d:Ljava/lang/Integer;

    iget-object v9, p0, Los$b;->e:Ljava/lang/String;

    iget-object v10, p0, Los$b;->f:Ljava/util/List;

    iget-object v11, p0, Los$b;->g:Lxs;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Los;-><init>(JJLss;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lxs;Los$a;)V

    return-object v0

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lss;)Lus$a;
    .locals 0

    .line 1
    iput-object p1, p0, Los$b;->c:Lss;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lus$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lts;",
            ">;)",
            "Lus$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Los$b;->f:Ljava/util/List;

    return-object p0
.end method

.method d(Ljava/lang/Integer;)Lus$a;
    .locals 0

    .line 1
    iput-object p1, p0, Los$b;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method e(Ljava/lang/String;)Lus$a;
    .locals 0

    .line 1
    iput-object p1, p0, Los$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Lxs;)Lus$a;
    .locals 0

    .line 1
    iput-object p1, p0, Los$b;->g:Lxs;

    return-object p0
.end method

.method public g(J)Lus$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Los$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public h(J)Lus$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Los$b;->b:Ljava/lang/Long;

    return-object p0
.end method
