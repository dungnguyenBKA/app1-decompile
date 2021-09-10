.class final Lq10$b;
.super Li20$c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$c$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$c;
    .locals 4

    .line 1
    iget-object v0, p0, Lq10$b;->a:Lj20;

    if-nez v0, :cond_0

    const-string v0, " files"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v0, Lq10;

    iget-object v1, p0, Lq10$b;->a:Lj20;

    iget-object v2, p0, Lq10$b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lq10;-><init>(Lj20;Ljava/lang/String;Lq10$a;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lj20;)Li20$c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$c$b;",
            ">;)",
            "Li20$c$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq10$b;->a:Lj20;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Li20$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lq10$b;->b:Ljava/lang/String;

    return-object p0
.end method
