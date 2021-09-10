.class final Ld20$b;
.super Li20$d$d$a$b$e$b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$a$b$e$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$d$a$b$e$b;
    .locals 11

    .line 1
    iget-object v0, p0, Ld20$b;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, " pc"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Ld20$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " symbol"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Ld20$b;->d:Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " offset"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Ld20$b;->e:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const-string v1, " importance"

    .line 7
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    new-instance v0, Ld20;

    iget-object v1, p0, Ld20$b;->a:Ljava/lang/Long;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Ld20$b;->b:Ljava/lang/String;

    iget-object v6, p0, Ld20$b;->c:Ljava/lang/String;

    iget-object v1, p0, Ld20$b;->d:Ljava/lang/Long;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Ld20$b;->e:Ljava/lang/Integer;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ld20;-><init>(JLjava/lang/String;Ljava/lang/String;JILd20$a;)V

    return-object v0

    .line 13
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Li20$d$d$a$b$e$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ld20$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Li20$d$d$a$b$e$b$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ld20$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(J)Li20$d$d$a$b$e$b$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ld20$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public e(J)Li20$d$d$a$b$e$b$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ld20$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Li20$d$d$a$b$e$b$a;
    .locals 1

    const-string v0, "Null symbol"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ld20$b;->b:Ljava/lang/String;

    return-object p0
.end method
