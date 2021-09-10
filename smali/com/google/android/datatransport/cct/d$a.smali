.class final Lcom/google/android/datatransport/cct/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/net/URL;

.field final b:Lrs;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;Lrs;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/cct/d$a;->a:Ljava/net/URL;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/cct/d$a;->b:Lrs;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/cct/d$a;->c:Ljava/lang/String;

    return-void
.end method
