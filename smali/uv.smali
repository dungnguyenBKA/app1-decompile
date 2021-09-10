.class public Luv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luv$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Luv$a;


# direct methods
.method public static declared-synchronized a()Luv$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Luv;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Luv;->a:Luv$a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lvv;

    invoke-direct {v1}, Lvv;-><init>()V

    .line 3
    sput-object v1, Luv;->a:Luv$a;

    .line 4
    :cond_0
    sget-object v1, Luv;->a:Luv$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
