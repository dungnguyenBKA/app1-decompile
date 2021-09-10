.class final Lv10$b;
.super Li20$d$c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$c;
    .locals 15

    .line 1
    iget-object v0, p0, Lv10$b;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, " arch"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lv10$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " model"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lv10$b;->c:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " cores"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Lv10$b;->d:Ljava/lang/Long;

    if-nez v1, :cond_3

    const-string v1, " ram"

    .line 7
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    iget-object v1, p0, Lv10$b;->e:Ljava/lang/Long;

    if-nez v1, :cond_4

    const-string v1, " diskSpace"

    .line 9
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_4
    iget-object v1, p0, Lv10$b;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    const-string v1, " simulator"

    .line 11
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_5
    iget-object v1, p0, Lv10$b;->g:Ljava/lang/Integer;

    if-nez v1, :cond_6

    const-string v1, " state"

    .line 13
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_6
    iget-object v1, p0, Lv10$b;->h:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, " manufacturer"

    .line 15
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_7
    iget-object v1, p0, Lv10$b;->i:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, " modelClass"

    .line 17
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    new-instance v0, Lv10;

    iget-object v1, p0, Lv10$b;->a:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lv10$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lv10$b;->c:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lv10$b;->d:Ljava/lang/Long;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, p0, Lv10$b;->e:Ljava/lang/Long;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v1, p0, Lv10$b;->f:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v1, p0, Lv10$b;->g:Ljava/lang/Integer;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, p0, Lv10$b;->h:Ljava/lang/String;

    iget-object v13, p0, Lv10$b;->i:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lv10;-><init>(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;Lv10$a;)V

    return-object v0

    .line 26
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(I)Li20$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lv10$b;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(I)Li20$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lv10$b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(J)Li20$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lv10$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Li20$d$c$a;
    .locals 1

    const-string v0, "Null manufacturer"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lv10$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Li20$d$c$a;
    .locals 1

    const-string v0, "Null model"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lv10$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Li20$d$c$a;
    .locals 1

    const-string v0, "Null modelClass"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lv10$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public h(J)Li20$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lv10$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public i(Z)Li20$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lv10$b;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public j(I)Li20$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lv10$b;->g:Ljava/lang/Integer;

    return-object p0
.end method
