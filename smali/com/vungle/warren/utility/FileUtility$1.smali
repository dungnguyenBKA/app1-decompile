.class final Lcom/vungle/warren/utility/FileUtility$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/FileUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideObjectInputStream(Ljava/io/InputStream;)Lcom/vungle/warren/utility/SafeObjectInputStream;
    .locals 2

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/SafeObjectInputStream;

    sget-object v1, Lcom/vungle/warren/utility/FileUtility;->allowedClasses:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/vungle/warren/utility/SafeObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic provideObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/utility/FileUtility$1;->provideObjectInputStream(Ljava/io/InputStream;)Lcom/vungle/warren/utility/SafeObjectInputStream;

    move-result-object p1

    return-object p1
.end method
