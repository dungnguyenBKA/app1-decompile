.class Lvo$b;
.super Lap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lvo;


# direct methods
.method constructor <init>(Lvo;Lvo$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo$b;->a:Lvo;

    invoke-direct {p0}, Lap$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lap;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lvo$b;->a:Lvo;

    invoke-static {v0}, Lvo;->a(Lvo;)Lap$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lvo$b;->a:Lvo;

    invoke-static {v0}, Lvo;->a(Lvo;)Lap$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lap$a;->a(Lap;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvo$b;->a:Lvo;

    invoke-static {v0}, Lvo;->a(Lvo;)Lap$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lvo$b;->a:Lvo;

    invoke-static {v0}, Lvo;->a(Lvo;)Lap$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lap$a;->b(Lap;)V

    :cond_0
    return-void
.end method

.method public c(Lap;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lvo$b;->a:Lvo;

    invoke-static {v0}, Lvo;->a(Lvo;)Lap$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lvo$b;->a:Lvo;

    invoke-static {v0}, Lvo;->a(Lvo;)Lap$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lap$a;->c(Lap;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
