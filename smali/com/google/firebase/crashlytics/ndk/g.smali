.class final Lcom/google/firebase/crashlytics/ndk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/ndk/g$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/g$b;Lcom/google/firebase/crashlytics/ndk/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/g$b;->a(Lcom/google/firebase/crashlytics/ndk/g$b;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Ljava/io/File;

    .line 3
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/g$b;->b(Lcom/google/firebase/crashlytics/ndk/g$b;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/g;->b:Ljava/io/File;

    .line 4
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/g$b;->c(Lcom/google/firebase/crashlytics/ndk/g$b;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/g;->c:Ljava/io/File;

    .line 5
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/g$b;->d(Lcom/google/firebase/crashlytics/ndk/g$b;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/g;->d:Ljava/io/File;

    .line 6
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/g$b;->e(Lcom/google/firebase/crashlytics/ndk/g$b;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/g;->e:Ljava/io/File;

    .line 7
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/g$b;->f(Lcom/google/firebase/crashlytics/ndk/g$b;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/g;->f:Ljava/io/File;

    return-void
.end method
