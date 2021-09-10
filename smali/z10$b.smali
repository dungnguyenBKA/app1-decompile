.class final Lz10$b;
.super Li20$d$d$a$b$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$a$b$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$d$a$b$a;
    .locals 10

    .line 1
    iget-object v0, p0, Lz10$b;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, " baseAddress"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lz10$b;->b:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " size"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lz10$b;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " name"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, Lz10;

    iget-object v1, p0, Lz10$b;->a:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lz10$b;->b:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lz10$b;->c:Ljava/lang/String;

    iget-object v8, p0, Lz10$b;->d:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lz10;-><init>(JJLjava/lang/String;Ljava/lang/String;Lz10$a;)V

    return-object v0

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(J)Li20$d$d$a$b$a$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lz10$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Li20$d$d$a$b$a$a;
    .locals 1

    const-string v0, "Null name"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lz10$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(J)Li20$d$d$a$b$a$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lz10$b;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Li20$d$d$a$b$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lz10$b;->d:Ljava/lang/String;

    return-object p0
.end method
