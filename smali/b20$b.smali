.class final Lb20$b;
.super Li20$d$d$a$b$d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$a$b$d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$d$a$b$d;
    .locals 8

    .line 1
    iget-object v0, p0, Lb20$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " name"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lb20$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " code"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lb20$b;->c:Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " address"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, Lb20;

    iget-object v3, p0, Lb20$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lb20$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lb20$b;->c:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lb20;-><init>(Ljava/lang/String;Ljava/lang/String;JLb20$a;)V

    return-object v0

    .line 9
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(J)Li20$d$d$a$b$d$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lb20$b;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Li20$d$d$a$b$d$a;
    .locals 1

    const-string v0, "Null code"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb20$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Li20$d$d$a$b$d$a;
    .locals 1

    const-string v0, "Null name"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb20$b;->a:Ljava/lang/String;

    return-object p0
.end method
