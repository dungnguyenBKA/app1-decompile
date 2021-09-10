.class final Lcom/google/firebase/installations/a$b;
.super Lcom/google/firebase/installations/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/installations/l;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/a$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " token"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/installations/a$b;->b:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " tokenExpirationTimestamp"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/installations/a$b;->c:Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " tokenCreationTimestamp"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, Lcom/google/firebase/installations/a;

    iget-object v3, p0, Lcom/google/firebase/installations/a$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/installations/a$b;->b:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/firebase/installations/a$b;->c:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/installations/a;-><init>(Ljava/lang/String;JJLcom/google/firebase/installations/a$a;)V

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

.method public b(J)Lcom/google/firebase/installations/l$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/a$b;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public c(J)Lcom/google/firebase/installations/l$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/a$b;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/installations/l$a;
    .locals 1

    const-string v0, "Null token"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/installations/a$b;->a:Ljava/lang/String;

    return-object p0
.end method
