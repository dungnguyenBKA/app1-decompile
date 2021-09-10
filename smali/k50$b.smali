.class final Lk50$b;
.super Lo50$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Lo50$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo50$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo50;
    .locals 8

    .line 1
    iget-object v0, p0, Lk50$b;->b:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, " tokenExpirationTimestamp"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v0, Lk50;

    iget-object v3, p0, Lk50$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lk50$b;->b:Ljava/lang/Long;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lk50$b;->c:Lo50$b;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lk50;-><init>(Ljava/lang/String;JLo50$b;Lk50$a;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lo50$b;)Lo50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lk50$b;->c:Lo50$b;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lk50$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d(J)Lo50$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lk50$b;->b:Ljava/lang/Long;

    return-object p0
.end method
