.class final Lo10$b;
.super Li20$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Li20$d;

.field private h:Li20$c;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$a;-><init>()V

    return-void
.end method

.method constructor <init>(Li20;Lo10$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Li20$a;-><init>()V

    .line 3
    invoke-virtual {p1}, Li20;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo10$b;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Li20;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo10$b;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Li20;->h()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lo10$b;->c:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Li20;->f()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo10$b;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Li20;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo10$b;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Li20;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo10$b;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Li20;->j()Li20$d;

    move-result-object p2

    iput-object p2, p0, Lo10$b;->g:Li20$d;

    .line 10
    invoke-virtual {p1}, Li20;->g()Li20$c;

    move-result-object p1

    iput-object p1, p0, Lo10$b;->h:Li20$c;

    return-void
.end method


# virtual methods
.method public a()Li20;
    .locals 12

    .line 1
    iget-object v0, p0, Lo10$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " sdkVersion"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lo10$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " gmpAppId"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lo10$b;->c:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " platform"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Lo10$b;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " installationUuid"

    .line 7
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    iget-object v1, p0, Lo10$b;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, " buildVersion"

    .line 9
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_4
    iget-object v1, p0, Lo10$b;->f:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, " displayVersion"

    .line 11
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    new-instance v0, Lo10;

    iget-object v3, p0, Lo10$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lo10$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lo10$b;->c:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lo10$b;->d:Ljava/lang/String;

    iget-object v7, p0, Lo10$b;->e:Ljava/lang/String;

    iget-object v8, p0, Lo10$b;->f:Ljava/lang/String;

    iget-object v9, p0, Lo10$b;->g:Li20$d;

    iget-object v10, p0, Lo10$b;->h:Li20$c;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lo10;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Li20$d;Li20$c;Lo10$a;)V

    return-object v0

    .line 15
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Li20$a;
    .locals 1

    const-string v0, "Null buildVersion"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lo10$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Li20$a;
    .locals 1

    const-string v0, "Null displayVersion"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lo10$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Li20$a;
    .locals 1

    const-string v0, "Null gmpAppId"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lo10$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Li20$a;
    .locals 1

    const-string v0, "Null installationUuid"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lo10$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Li20$c;)Li20$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lo10$b;->h:Li20$c;

    return-object p0
.end method

.method public g(I)Li20$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo10$b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Li20$a;
    .locals 1

    const-string v0, "Null sdkVersion"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lo10$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public i(Li20$d;)Li20$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lo10$b;->g:Li20$d;

    return-object p0
.end method
