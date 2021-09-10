.class final synthetic Lcom/google/firebase/crashlytics/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/b;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    return-void
.end method

.method public static b(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)Lcom/google/firebase/components/h;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/b;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/b;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/crashlytics/b;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/google/firebase/c;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/c;

    .line 3
    const-class v1, Lzy;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzy;

    .line 4
    const-class v2, Lvy;

    invoke-interface {p1, v2}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvy;

    .line 5
    const-class v3, Lcom/google/firebase/installations/g;

    invoke-interface {p1, v3}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/installations/g;

    .line 6
    invoke-static {v0, p1, v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lzy;Lvy;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    return-object p1
.end method
