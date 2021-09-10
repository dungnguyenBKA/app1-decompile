.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/d<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/components/d;

    .line 1
    const-class v1, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 2
    invoke-static {v1}, Lcom/google/firebase/components/d;->a(Ljava/lang/Class;)Lcom/google/firebase/components/d$b;

    move-result-object v1

    const-class v2, Lcom/google/firebase/c;

    .line 3
    invoke-static {v2}, Lcom/google/firebase/components/q;->h(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lcom/google/firebase/installations/g;

    .line 4
    invoke-static {v2}, Lcom/google/firebase/components/q;->h(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lvy;

    .line 5
    invoke-static {v2}, Lcom/google/firebase/components/q;->f(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lzy;

    .line 6
    invoke-static {v2}, Lcom/google/firebase/components/q;->f(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/b;->b(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)Lcom/google/firebase/components/h;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->e(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/d$b;

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/components/d$b;->d()Lcom/google/firebase/components/d$b;

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/components/d$b;->c()Lcom/google/firebase/components/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-cls"

    const-string v2, "17.4.0"

    .line 10
    invoke-static {v1, v2}, Lx50;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
