.class final Le20$b;
.super Li20$d$d$c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Double;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$d$c;
    .locals 12

    .line 1
    iget-object v0, p0, Le20$b;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, " batteryVelocity"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Le20$b;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string v1, " proximityOn"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Le20$b;->d:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " orientation"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Le20$b;->e:Ljava/lang/Long;

    if-nez v1, :cond_3

    const-string v1, " ramUsed"

    .line 7
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    iget-object v1, p0, Le20$b;->f:Ljava/lang/Long;

    if-nez v1, :cond_4

    const-string v1, " diskUsed"

    .line 9
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    new-instance v0, Le20;

    iget-object v3, p0, Le20$b;->a:Ljava/lang/Double;

    iget-object v1, p0, Le20$b;->b:Ljava/lang/Integer;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Le20$b;->c:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v1, p0, Le20$b;->d:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Le20$b;->e:Ljava/lang/Long;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Le20$b;->f:Ljava/lang/Long;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Le20;-><init>(Ljava/lang/Double;IZIJJLe20$a;)V

    return-object v0

    .line 17
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/Double;)Li20$d$d$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Le20$b;->a:Ljava/lang/Double;

    return-object p0
.end method

.method public c(I)Li20$d$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le20$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(J)Li20$d$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Le20$b;->f:Ljava/lang/Long;

    return-object p0
.end method

.method public e(I)Li20$d$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le20$b;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public f(Z)Li20$d$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le20$b;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public g(J)Li20$d$d$c$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Le20$b;->e:Ljava/lang/Long;

    return-object p0
.end method
