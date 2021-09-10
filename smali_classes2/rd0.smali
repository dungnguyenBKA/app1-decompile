.class public Lrd0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "jpegturboengine"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lrd0;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lrd0;->a:Z

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrd0;->a:Z

    return v0
.end method
