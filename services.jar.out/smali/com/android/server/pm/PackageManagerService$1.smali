.class Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$alreadyDexOpted:Ljava/util/HashSet;

.field final synthetic val$didDexOpt:[Z

.field final synthetic val$lib:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/HashSet;Ljava/lang/String;[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$1;->val$alreadyDexOpted:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$1;->val$lib:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$1;->val$didDexOpt:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1284
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->val$alreadyDexOpted:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->val$lib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1285
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->val$lib:Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZ)I

    .line 1286
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->val$didDexOpt:[Z

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 1287
    return-void
.end method
