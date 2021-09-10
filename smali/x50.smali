.class public Lx50;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx50$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/components/d<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lr50;

    invoke-direct {v0, p0, p1}, Lr50;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-class p0, Lv50;

    invoke-static {v0, p0}, Lcom/google/firebase/components/d;->f(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lx50$a;)Lcom/google/firebase/components/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lx50$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/firebase/components/d<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lv50;

    invoke-static {v0}, Lcom/google/firebase/components/d;->g(Ljava/lang/Class;)Lcom/google/firebase/components/d$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/firebase/components/q;->h(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    invoke-static {p0, p1}, Lw50;->b(Ljava/lang/String;Lx50$a;)Lcom/google/firebase/components/h;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/components/d$b;->e(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/d$b;

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/components/d$b;->c()Lcom/google/firebase/components/d;

    move-result-object p0

    return-object p0
.end method
