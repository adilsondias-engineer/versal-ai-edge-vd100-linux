# 2026-03-14T22:52:17.343633200
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.create_platform_component(name = "myhelloworld",hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa",os = "standalone",cpu = "psv_cortexa72_0",domain_name = "standalone_psv_cortexa72_0",compiler = "gcc")

platform = client.get_component(name="myhelloworld")
status = platform.build()

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../myhelloworld/export/myhelloworld/myhelloworld.xpfm",domain = "standalone_psv_cortexa72_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

