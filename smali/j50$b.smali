.class final Lj50$b;
.super Lm50$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lo50;

.field private e:Lm50$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm50$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lm50;
    .locals 8

    .line 1
    new-instance v7, Lj50;

    iget-object v1, p0, Lj50$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lj50$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lj50$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lj50$b;->d:Lo50;

    iget-object v5, p0, Lj50$b;->e:Lm50$b;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lj50;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo50;Lm50$b;Lj50$a;)V

    return-object v7
.end method

.method public b(Lo50;)Lm50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lj50$b;->d:Lo50;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lm50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lj50$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lm50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lj50$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lm50$b;)Lm50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lj50$b;->e:Lm50$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lm50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lj50$b;->a:Ljava/lang/String;

    return-object p0
.end method
