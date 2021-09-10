.class final Lil$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lil$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lil$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lil$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lil$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lk2;Lil$b;Lil$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2<",
            "TT;>;",
            "Lil$b<",
            "TT;>;",
            "Lil$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lil$c;->c:Lk2;

    .line 3
    iput-object p2, p0, Lil$c;->a:Lil$b;

    .line 4
    iput-object p3, p0, Lil$c;->b:Lil$e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lil$d;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lil$d;

    invoke-interface {v0}, Lil$d;->b()Lll;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lll;->b(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lil$c;->b:Lil$e;

    invoke-interface {v0, p1}, Lil$e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lil$c;->c:Lk2;

    invoke-interface {v0, p1}, Lk2;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lil$c;->c:Lk2;

    invoke-interface {v0}, Lk2;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lil$c;->a:Lil$b;

    invoke-interface {v0}, Lil$b;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Created new "

    .line 4
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    :cond_0
    instance-of v1, v0, Lil$d;

    if-eqz v1, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Lil$d;

    invoke-interface {v1}, Lil$d;->b()Lll;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lll;->b(Z)V

    :cond_1
    return-object v0
.end method
