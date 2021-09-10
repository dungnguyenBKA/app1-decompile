.class final Lw10$b;
.super Li20$d$d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field private c:Li20$d$d$a;

.field private d:Li20$d$d$c;

.field private e:Li20$d$d$d;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$b;-><init>()V

    return-void
.end method

.method constructor <init>(Li20$d$d;Lw10$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Li20$d$d$b;-><init>()V

    .line 3
    invoke-virtual {p1}, Li20$d$d;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lw10$b;->a:Ljava/lang/Long;

    .line 4
    invoke-virtual {p1}, Li20$d$d;->f()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw10$b;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Li20$d$d;->b()Li20$d$d$a;

    move-result-object p2

    iput-object p2, p0, Lw10$b;->c:Li20$d$d$a;

    .line 6
    invoke-virtual {p1}, Li20$d$d;->c()Li20$d$d$c;

    move-result-object p2

    iput-object p2, p0, Lw10$b;->d:Li20$d$d$c;

    .line 7
    invoke-virtual {p1}, Li20$d$d;->d()Li20$d$d$d;

    move-result-object p1

    iput-object p1, p0, Lw10$b;->e:Li20$d$d$d;

    return-void
.end method


# virtual methods
.method public a()Li20$d$d;
    .locals 10

    .line 1
    iget-object v0, p0, Lw10$b;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, " timestamp"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lw10$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " type"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lw10$b;->c:Li20$d$d$a;

    if-nez v1, :cond_2

    const-string v1, " app"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Lw10$b;->d:Li20$d$d$c;

    if-nez v1, :cond_3

    const-string v1, " device"

    .line 7
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    new-instance v0, Lw10;

    iget-object v1, p0, Lw10$b;->a:Ljava/lang/Long;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lw10$b;->b:Ljava/lang/String;

    iget-object v6, p0, Lw10$b;->c:Li20$d$d$a;

    iget-object v7, p0, Lw10$b;->d:Li20$d$d$c;

    iget-object v8, p0, Lw10$b;->e:Li20$d$d$d;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lw10;-><init>(JLjava/lang/String;Li20$d$d$a;Li20$d$d$c;Li20$d$d$d;Lw10$a;)V

    return-object v0

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Li20$d$d$a;)Li20$d$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lw10$b;->c:Li20$d$d$a;

    return-object p0
.end method

.method public c(Li20$d$d$c;)Li20$d$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lw10$b;->d:Li20$d$d$c;

    return-object p0
.end method

.method public d(Li20$d$d$d;)Li20$d$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lw10$b;->e:Li20$d$d$d;

    return-object p0
.end method

.method public e(J)Li20$d$d$b;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lw10$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Li20$d$d$b;
    .locals 1

    const-string v0, "Null type"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lw10$b;->b:Ljava/lang/String;

    return-object p0
.end method
