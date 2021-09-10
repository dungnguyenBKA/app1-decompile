.class final synthetic Lcom/google/firebase/crashlytics/ndk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/a;->a:Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;

    return-void
.end method

.method public static b(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;)Lcom/google/firebase/components/h;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/ndk/a;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/ndk/a;-><init>(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/a;->a:Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".com.google.firebase.crashlytics-ndk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/google/firebase/crashlytics/ndk/b;

    new-instance v2, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;

    invoke-direct {v2, p1}, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/firebase/crashlytics/ndk/f;

    invoke-direct {v3, v0}, Lcom/google/firebase/crashlytics/ndk/f;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/google/firebase/crashlytics/ndk/b;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/ndk/d;Lcom/google/firebase/crashlytics/ndk/f;)V

    .line 5
    new-instance p1, Lcom/google/firebase/crashlytics/ndk/c;

    invoke-direct {p1, v1}, Lcom/google/firebase/crashlytics/ndk/c;-><init>(Lcom/google/firebase/crashlytics/ndk/e;)V

    return-object p1
.end method
