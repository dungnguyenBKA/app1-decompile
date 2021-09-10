.class Lj30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljw<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lk30;


# direct methods
.method constructor <init>(Lk30;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj30;->a:Lk30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkw;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lj30;->a:Lk30;

    .line 3
    invoke-static {p1}, Lk30;->b(Lk30;)Lv30;

    move-result-object p1

    iget-object v0, p0, Lj30;->a:Lk30;

    invoke-static {v0}, Lk30;->a(Lk30;)Lu30;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lv30;->d(Lu30;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lj30;->a:Lk30;

    .line 5
    invoke-static {v0}, Lk30;->c(Lk30;)Lm30;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm30;->a(Lorg/json/JSONObject;)Lt30;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lj30;->a:Lk30;

    invoke-static {v1}, Lk30;->d(Lk30;)Lg30;

    move-result-object v1

    .line 7
    iget-wide v2, v0, Lt30;->d:J

    .line 8
    invoke-virtual {v1, v2, v3, p1}, Lg30;->b(JLorg/json/JSONObject;)V

    .line 9
    iget-object v1, p0, Lj30;->a:Lk30;

    const-string v2, "Loaded settings: "

    invoke-static {v1, p1, v2}, Lk30;->e(Lk30;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lj30;->a:Lk30;

    invoke-static {p1}, Lk30;->a(Lk30;)Lu30;

    move-result-object v1

    iget-object v1, v1, Lu30;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lk30;->f(Lk30;Ljava/lang/String;)Z

    .line 11
    iget-object p1, p0, Lj30;->a:Lk30;

    invoke-static {p1}, Lk30;->g(Lk30;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lj30;->a:Lk30;

    invoke-static {p1}, Lk30;->h(Lk30;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llw;

    .line 13
    iget-object v1, v0, Lt30;->a:Lp30;

    .line 14
    invoke-virtual {p1, v1}, Llw;->e(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Llw;

    invoke-direct {p1}, Llw;-><init>()V

    .line 16
    iget-object v0, v0, Lt30;->a:Lp30;

    .line 17
    invoke-virtual {p1, v0}, Llw;->e(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lj30;->a:Lk30;

    invoke-static {v0}, Lk30;->h(Lk30;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 19
    invoke-static {p1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    return-object p1
.end method
