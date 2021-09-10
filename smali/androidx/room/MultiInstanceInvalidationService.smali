.class public Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field b:I

.field final c:Lf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroidx/room/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/room/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/room/MultiInstanceInvalidationService;->b:I

    .line 3
    new-instance v0, Lf0;

    const/16 v1, 0xa

    .line 4
    invoke-direct {v0, v1}, Lf0;-><init>(I)V

    .line 5
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Lf0;

    .line 6
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$a;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$a;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->d:Landroid/os/RemoteCallbackList;

    .line 7
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$b;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$b;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->e:Landroidx/room/d;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService;->e:Landroidx/room/d;

    return-object p1
.end method
